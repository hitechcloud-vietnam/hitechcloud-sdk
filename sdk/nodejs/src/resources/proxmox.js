"use strict";

const { BaseResource } = require("./base");

class ProxmoxResource extends BaseResource {
  async getStatus(serviceId) {
    return this._http.get("$/api/service/{id}/htcpve/status");
  }

  async powerAction(serviceId, data) {
    return this._http.post("$/api/service/{id}/htcpve/power", data);
  }

  async listVms(serviceId) {
    return this._http.get("$/api/service/{id}/htcpve/vms");
  }

  async listIps(serviceId) {
    return this._http.get("$/api/service/{id}/htcpve/ips");
  }

  async setRdns(serviceId, data) {
    return this._http.post("$/api/service/{id}/htcpve/rdns", data);
  }

  async listBackups(serviceId) {
    return this._http.get("$/api/service/{id}/htcpve/backups");
  }

  async createBackup(serviceId, data) {
    return this._http.post("$/api/service/{id}/htcpve/backups", data);
  }

  async listSnapshots(serviceId) {
    return this._http.get("$/api/service/{id}/htcpve/snapshots");
  }

  async createSnapshot(serviceId, data) {
    return this._http.post("$/api/service/{id}/htcpve/snapshots", data);
  }

  async getBandwidthUsage(serviceId) {
    return this._http.get("$/api/service/{id}/htcpve/usage");
  }

}

module.exports = { ProxmoxResource };
