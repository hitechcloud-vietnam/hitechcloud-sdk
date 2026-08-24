"use strict";

const { BaseResource } = require("./base");

class HostingResource extends BaseResource {
  async getReinstall(serviceId) {
    return this._http.get("$/api/service/{id}/reinstall");
  }

  async reinstall(serviceId, data) {
    return this._http.post("$/api/service/{id}/reinstall", data);
  }

  async getStatus(serviceId) {
    return this._http.get("$/api/service/{id}/status");
  }

  async getBandwidthGraphs(serviceId) {
    return this._http.get("$/api/service/{id}/bandwidth-graphs");
  }

  async getBandwidth(serviceId) {
    return this._http.get("$/api/service/{id}/bandwidth");
  }

  async resetPassword(serviceId) {
    return this._http.post("$/api/service/{id}/reset");
  }

}

module.exports = { HostingResource };
