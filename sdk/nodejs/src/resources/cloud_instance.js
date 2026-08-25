"use strict";

const { BaseResource } = require("./base");

class CloudInstanceResource extends BaseResource {
  async list(serviceId) {
    return this._http.get("/api/service/{id}/vms");
  }

  async create(serviceId, data) {
    return this._http.post("/api/service/{id}/vms", data);
  }

  async get(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}");
  }

  async delete(serviceId, vmId) {
    return this._http.delete("/api/service/{id}/vms/{vmid}");
  }

  async update(serviceId, vmId, data) {
    return this._http.put("/api/service/{id}/vms/{vmid}", data);
  }

  async stop(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/stop");
  }

  async start(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/start");
  }

  async reboot(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/reboot");
  }

  async resetPassword(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/resetpwd", data);
  }

  async rebuild(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/rebuild", data);
  }

  async listIps(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/ips");
  }

  async addIp(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/ips", data);
  }

  async listInterfaces(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/interfaces");
  }

  async getCpuUsage(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/usage/cpu");
  }

  async getNetUsage(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/usage/net");
  }

  async getDiskUsage(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/usage/disk");
  }

  async listStorage(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/storage");
  }

  async resizeStorage(serviceId, vmId, diskId, data) {
    return this._http.put("/api/service/{id}/vms/{vmid}/storage/{diskid}", data);
  }

  async listImages(serviceId) {
    return this._http.get("/api/service/{id}/images");
  }

  async createImage(serviceId, data) {
    return this._http.post("/api/service/{id}/images", data);
  }

  async getInterfaceIps(serviceId, vmId, iface) {
    return this._http.get(`/api/service/{id}/vms/{vmid}/interfaces/${iface}/ips`);
  }

  async deleteIp(serviceId, vmId, ipId) {
    return this._http.delete("/api/service/{id}/vms/{vmid}/ips/{ipid}");
  }

  async getRdns(serviceId, vmId) {
    return this._http.get("/api/service/{id}/vms/{vmid}/rdns");
  }

  async setRdns(serviceId, vmId, data) {
    return this._http.post("/api/service/{id}/vms/{vmid}/rdns", data);
  }

  async rebuildNetwork(serviceId, vmId) {
    return this._http.post("/api/service/{id}/vms/{vmid}/rebuild_network");
  }

}

module.exports = { CloudInstanceResource };
