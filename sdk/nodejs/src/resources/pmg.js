"use strict";

const { BaseResource } = require("./base");

class PmgResource extends BaseResource {
  async getConfig(serviceId) {
    return this._http.get("/api/service/{id}/htcpmg/config");
  }

  async addDomain(serviceId, data) {
    return this._http.post("/api/service/{id}/htcpmg/domains", data);
  }

  async setTransport(serviceId, data) {
    return this._http.post("/api/service/{id}/htcpmg/transport", data);
  }

  async getStats(serviceId) {
    return this._http.get("/api/service/{id}/htcpmg/stats");
  }

}

module.exports = { PmgResource };
