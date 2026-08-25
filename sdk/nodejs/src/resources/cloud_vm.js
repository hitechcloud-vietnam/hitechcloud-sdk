"use strict";

const { BaseResource } = require("./base");

class CloudVmResource extends BaseResource {
  async getUpgrade(serviceId) {
    return this._http.get("/api/service/{id}/upgrade");
  }

  async upgrade(serviceId, data) {
    return this._http.post("/api/service/{id}/upgrade", data);
  }

  async getResources(serviceId) {
    return this._http.get("/api/service/{id}/resources");
  }

  async getTemplates(serviceId, vmId) {
    return this._http.get("/api/service/{id}/templates/{vmid}");
  }

  async getMemoryUsage(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/usage/memory");
  }

  async listVmImages(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/images");
  }

  async createVmImage(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/images", data);
  }

  async setBootOrder(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/boot", data);
  }

  async toggleTunTap(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/tuntap", data);
  }

}

module.exports = { CloudVmResource };
