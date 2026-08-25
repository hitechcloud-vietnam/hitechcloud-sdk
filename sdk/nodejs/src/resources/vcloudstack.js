"use strict";

const { BaseResource } = require("./base");

class VCloudStackResource extends BaseResource {
  async rescue(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/rescue");
  }

  async unrescue(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/unrescue");
  }

  async getConsole(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/console");
  }

  async getUsage(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/usage");
  }

}

module.exports = { VCloudStackResource };
