"use strict";

const { BaseResource } = require("./base");

class UsersResource extends BaseResource {
  async getDetails() {
    return this._http.get("$/api/details");
  }

  async updateDetails(data) {
    return this._http.put("$/api/details", data);
  }

  async getLogs(params = {}) {
    return this._http.get("$/api/logs");
  }

}

module.exports = { UsersResource };
