"use strict";

class BaseResource {
  constructor(httpClient) {
    this._http = httpClient;
  }
}

module.exports = { BaseResource };
