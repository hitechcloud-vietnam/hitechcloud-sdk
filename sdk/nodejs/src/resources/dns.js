"use strict";

const { BaseResource } = require("./base");

class DnsResource extends BaseResource {
  async list() {
    return this._http.get("/api/dns");
  }

  async listForService(serviceId) {
    return this._http.get(`/api/service/${serviceId}/dns`);
  }

  async addZone(serviceId, domain) {
    return this._http.post(`/api/service/${serviceId}/dns`, { domain });
  }

  async getZone(serviceId, zoneId) {
    return this._http.get(`/api/service/${serviceId}/dns/${zoneId}`);
  }

  async deleteZone(serviceId, zoneId) {
    return this._http.delete(`/api/service/${serviceId}/dns/${zoneId}`);
  }

  async addRecord(serviceId, zoneId, data) {
    return this._http.post(`/api/service/${serviceId}/dns/${zoneId}/records`, data);
  }

  async editRecord(serviceId, zoneId, recordId, data) {
    return this._http.put(
      `/api/service/${serviceId}/dns/${zoneId}/records/${recordId}`,
      data
    );
  }

  async deleteRecord(serviceId, zoneId, recordId) {
    return this._http.delete(
      `/api/service/${serviceId}/dns/${zoneId}/records/${recordId}`
    );
  }
}

module.exports = { DnsResource };
