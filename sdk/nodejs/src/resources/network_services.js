"use strict";

const { BaseResource } = require("./base");

class NetworkServicesResource extends BaseResource {
  async getIps(serviceId) {
    return this._http.get("/api/service/{id}/ip");
  }

  async getRdns(serviceId) {
    return this._http.get("/api/service/{id}/rdns");
  }

  async setRdns(serviceId, data) {
    return this._http.post("/api/service/{id}/rdns", data);
  }

}

module.exports = { NetworkServicesResource };
