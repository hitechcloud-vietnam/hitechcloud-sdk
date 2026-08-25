"use strict";

const { BaseResource } = require("./base");

class DnsResource extends BaseResource {
  async listZones(params = {}) {
    return this._http.get("/api/dns");
  }

  async createZone(serviceId, data) {
    return this._http.post("/api/service/{service_id}/dns", data);
  }

  async getZones(serviceId) {
    return this._http.get("/api/service/{service_id}/dns");
  }

  async getZone(serviceId, zoneId) {
    return this._http.get("/api/service/{service_id}/dns/{zone_id}");
  }

  async deleteZone(serviceId, zoneId) {
    return this._http.delete("/api/service/{service_id}/dns/{zone_id}");
  }

  async createRecord(serviceId, zoneId, data) {
    return this._http.post("/api/service/{service_id}/dns/{zone_id}/records", data);
  }

  async updateRecord(serviceId, zoneId, recordId, data) {
    return this._http.put("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", data);
  }

  async deleteRecord(serviceId, zoneId, recordId) {
    return this._http.delete("/api/service/{service_id}/dns/{zone_id}/records/{record_id}");
  }

}

module.exports = { DnsResource };
