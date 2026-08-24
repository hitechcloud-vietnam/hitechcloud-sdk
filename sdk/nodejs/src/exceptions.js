"use strict";

class HiTechCloudError extends Error {
  constructor(message, statusCode, data) {
    super(message);
    this.name = "HiTechCloudError";
    this.statusCode = statusCode;
    this.data = data;
  }
}

class AuthenticationError extends HiTechCloudError {
  constructor(message, data) {
    super(message || "Authentication failed", 401, data);
    this.name = "AuthenticationError";
  }
}

class AuthorizationError extends HiTechCloudError {
  constructor(message, data) {
    super(message || "Access denied", 403, data);
    this.name = "AuthorizationError";
  }
}

class NotFoundError extends HiTechCloudError {
  constructor(message, data) {
    super(message || "Resource not found", 404, data);
    this.name = "NotFoundError";
  }
}

class RateLimitError extends HiTechCloudError {
  constructor(message, retryAfter, data) {
    super(message || "Rate limit exceeded", 429, data);
    this.name = "RateLimitError";
    this.retryAfter = retryAfter;
  }
}

class ValidationError extends HiTechCloudError {
  constructor(message, data) {
    super(message || "Validation error", 422, data);
    this.name = "ValidationError";
  }
}

class ServerError extends HiTechCloudError {
  constructor(message, statusCode, data) {
    super(message || "Server error", statusCode || 500, data);
    this.name = "ServerError";
  }
}

module.exports = {
  HiTechCloudError,
  AuthenticationError,
  AuthorizationError,
  NotFoundError,
  RateLimitError,
  ValidationError,
  ServerError,
};
