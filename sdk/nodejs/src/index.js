"use strict";

const { HiTechCloud } = require("./client");
const {
  HiTechCloudError,
  AuthenticationError,
  AuthorizationError,
  NotFoundError,
  RateLimitError,
  ValidationError,
  ServerError,
} = require("./exceptions");

module.exports = {
  HiTechCloud,
  HiTechCloudError,
  AuthenticationError,
  AuthorizationError,
  NotFoundError,
  RateLimitError,
  ValidationError,
  ServerError,
};
