"use strict";

const { BaseResource } = require("./base");

class VirtualizorResource extends BaseResource {
  async suspend(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/suspend");
  }

  async unsuspend(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/unsuspend");
  }

  async getRebuildInfo(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/rebuild");
  }

  async addSshKey(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/addsshkey", data);
  }

}

module.exports = { VirtualizorResource };
