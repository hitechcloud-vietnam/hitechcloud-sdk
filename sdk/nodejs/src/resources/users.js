"use strict";

const { BaseResource } = require("./base");

class UsersResource extends BaseResource {
  async getDetails() {
    return this._http.get("/api/user");
  }

  async updateDetails(data) {
    return this._http.put("/api/user", data);
  }

  async getLogs() {
    return this._http.get("/api/user/logs");
  }
}

module.exports = { UsersResource };
