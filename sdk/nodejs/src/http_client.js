"use strict";

const axios = require("axios");
const {
  HiTechCloudError,
  AuthenticationError,
  AuthorizationError,
  NotFoundError,
  RateLimitError,
  ValidationError,
  ServerError,
} = require("./exceptions");

class HTTPClient {
  constructor(baseUrl, timeout = 30000, maxRetries = 3) {
    this.baseUrl = baseUrl;
    this.maxRetries = maxRetries;
    this.token = null;

    this.client = axios.create({
      baseURL: baseUrl,
      timeout: timeout,
      headers: {
        "Content-Type": "application/json",
        "User-Agent": "HiTechCloud-SDK-NodeJS/1.0.0",
      },
    });
  }

  setToken(token) {
    this.token = token;
    this.client.defaults.headers.common["Authorization"] = `Bearer ${token}`;
  }

  clearToken() {
    this.token = null;
    delete this.client.defaults.headers.common["Authorization"];
  }

  _mapError(error) {
    if (!error.response) {
      throw new HiTechCloudError(error.message);
    }

    const { status, data } = error.response;
    const message = data?.error || data?.message || `HTTP ${status}`;

    switch (status) {
      case 401:
        throw new AuthenticationError(message, data);
      case 403:
        throw new AuthorizationError(message, data);
      case 404:
        throw new NotFoundError(message, data);
      case 422:
        throw new ValidationError(message, data);
      case 429: {
        const retryAfter = parseInt(error.response.headers["retry-after"] || "60", 10);
        throw new RateLimitError(message, retryAfter, data);
      }
      default:
        if (status >= 500) {
          throw new ServerError(message, status, data);
        }
        throw new HiTechCloudError(message, status, data);
    }
  }

  async request(method, path, data = null, params = null) {
    let lastError;

    for (let attempt = 0; attempt <= this.maxRetries; attempt++) {
      try {
        const config = { method, url: path };
        if (data) config.data = data;
        if (params) config.params = params;

        const response = await this.client.request(config);
        return response.data;
      } catch (error) {
        lastError = error;

        if (error.response && error.response.status === 429) {
          const retryAfter = parseInt(error.response.headers["retry-after"] || "60", 10);
          if (attempt < this.maxRetries) {
            await new Promise((resolve) => setTimeout(resolve, retryAfter * 1000));
            continue;
          }
        }

        if (attempt < this.maxRetries && (!error.response || error.response.status >= 500)) {
          const delay = Math.pow(2, attempt) * 1000;
          await new Promise((resolve) => setTimeout(resolve, delay));
          continue;
        }

        this._mapError(error);
      }
    }

    this._mapError(lastError);
  }

  get(path, params) {
    return this.request("GET", path, null, params);
  }

  post(path, data) {
    return this.request("POST", path, data);
  }

  put(path, data) {
    return this.request("PUT", path, data);
  }

  delete(path) {
    return this.request("DELETE", path);
  }
}

module.exports = { HTTPClient };
