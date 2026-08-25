"use strict";

const { BaseResource } = require("./base");

class ServiceStatusResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/statuses");
  }

  async update(statusId, data) {
    return this._http.put("/api/statuses/{id}", data);
  }

}

module.exports = { ServiceStatusResource };
