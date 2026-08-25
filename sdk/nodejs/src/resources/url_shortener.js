"use strict";

const { BaseResource } = require("./base");

class UrlShortenerResource extends BaseResource {
  async shorten(data) {
    return this._http.post("/api/url-shortener/shorten", data);
  }

  async listLinks() {
    return this._http.get("/api/url-shortener/links");
  }

  async getConfig() {
    return this._http.get("/api/url-shortener/config");
  }

  async getStats() {
    return this._http.get("/api/url-shortener/stats");
  }

  async getLink(linkId) {
    return this._http.get("/api/url-shortener/links/{id}");
  }

  async deleteLink(linkId) {
    return this._http.delete("/api/url-shortener/links/{id}");
  }

}

module.exports = { UrlShortenerResource };
