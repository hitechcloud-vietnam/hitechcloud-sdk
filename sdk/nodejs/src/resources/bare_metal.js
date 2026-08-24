"use strict";

const { BaseResource } = require("./base");

class BareMetalResource extends BaseResource {
  async getReinstallTemplates(serviceId) {
    return this._http.get("$/api/service/{id}/reinstall/templates");
  }

  async cancelDiag(serviceId) {
    return this._http.post("$/api/service/{id}/diag/cancel");
  }

  async getDiagTemplates(serviceId) {
    return this._http.get("$/api/service/{id}/diag/templates");
  }

  async getDiag(serviceId) {
    return this._http.get("$/api/service/{id}/diag");
  }

  async runDiag(serviceId, data) {
    return this._http.post("$/api/service/{id}/diag", data);
  }

  async getRescueTemplates(serviceId) {
    return this._http.get("$/api/service/{id}/rescue/templates");
  }

  async getRescue(serviceId) {
    return this._http.get("$/api/service/{id}/rescue");
  }

  async startRescue(serviceId, data) {
    return this._http.post("$/api/service/{id}/rescue", data);
  }

  async cancelRescue(serviceId) {
    return this._http.post("$/api/service/{id}/rescue/cancel");
  }

  async getInfo(serviceId) {
    return this._http.get("$/api/service/{id}/info");
  }

  async setHostname(serviceId, data) {
    return this._http.post("$/api/service/{id}/hostname", data);
  }

  async listIps(serviceId) {
    return this._http.get("$/api/service/{id}/ips");
  }

  async addIp(serviceId, data) {
    return this._http.post("$/api/service/{id}/ips", data);
  }

  async listVlans(serviceId) {
    return this._http.get("$/api/service/{id}/vlans");
  }

  async getIp(serviceId, ip) {
    return this._http.get(`/api/service/{id}/ips/${ip}`);
  }

  async updateIp(serviceId, ip, data) {
    return this._http.put(`/api/service/{id}/ips/${ip}`, data);
  }

  async getReinstall(serviceId) {
    return this._http.get("$/api/service/{id}/reinstall");
  }

  async reinstall(serviceId, data) {
    return this._http.post("$/api/service/{id}/reinstall", data);
  }

  async getStatus(serviceId) {
    return this._http.get("$/api/service/{id}/status");
  }

  async powerAction(serviceId, action) {
    return this._http.post(`/api/service/{id}/power/${action}`);
  }

  async getServerStock(params = {}) {
    return this._http.get("$/api/serverstock");
  }

}

module.exports = { BareMetalResource };
