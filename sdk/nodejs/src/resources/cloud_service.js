"use strict";

const { BaseResource } = require("./base");

class CloudServiceResource extends BaseResource {
  async shutdown(serviceId, vmId) {
    return this._http.post("$/api/service/{id}/vms/{vmid}/shutdown");
  }

  async reset(serviceId, vmId) {
    return this._http.post("$/api/service/{id}/vms/{vmid}/reset");
  }

  async setHostname(serviceId, vmId, data) {
    return this._http.post("$/api/service/{id}/vms/{vmid}/hostname", data);
  }

  async getIpPool(serviceId, vmId) {
    return this._http.get("$/api/service/{id}/vms/{vmid}/ippool");
  }

  async assignIp(serviceId, vmId, pool) {
    return this._http.post(`/api/service/{id}/vms/{vmid}/ippool/${pool}`);
  }

  async listNetworks(serviceId) {
    return this._http.get("$/api/service/{id}/networks");
  }

  async createInterface(serviceId, vmId, data) {
    return this._http.post("$/api/service/{id}/vms/{vmid}/interfaces", data);
  }

  async getInterface(serviceId, vmId, iface) {
    return this._http.get(`/api/service/{id}/vms/{vmid}/interfaces/${iface}`);
  }

  async updateInterface(serviceId, vmId, iface, data) {
    return this._http.put(`/api/service/{id}/vms/{vmid}/interfaces/${iface}`, data);
  }

  async deleteInterface(serviceId, vmId, iface) {
    return this._http.delete(`/api/service/{id}/vms/{vmid}/interfaces/${iface}`);
  }

}

module.exports = { CloudServiceResource };
