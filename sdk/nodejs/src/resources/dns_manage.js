"use strict";

const { BaseResource } = require("./base");

class DnsManageResource extends BaseResource {
  async registerNameservers(domainId, data) {
    return this._http.post("/api/domain/{id}/reg", data);
  }

  async getRecords(domainId) {
    return this._http.get("/api/domain/{id}/dns");
  }

  async createRecord(domainId, data) {
    return this._http.post("/api/domain/{id}/dns", data);
  }

  async updateRecord(domainId, index, data) {
    return this._http.put(`/api/domain/{id}/dns/${index}`, data);
  }

  async deleteRecord(domainId, index) {
    return this._http.delete(`/api/domain/{id}/dns/${index}`);
  }

  async getRecordTypes(domainId) {
    return this._http.get("/api/domain/{id}/dns/types");
  }

  async getDnssecFlags(domainId) {
    return this._http.get("/api/domain/{id}/dnssec/flags");
  }

  async getDnssec(domainId) {
    return this._http.get("/api/domain/{id}/dnssec");
  }

  async createDnssec(domainId, data) {
    return this._http.post("/api/domain/{id}/dnssec", data);
  }

  async deleteDnssec(domainId, data) {
    return this._http.delete("/api/domain/{id}/dnssec");
  }

}

module.exports = { DnsManageResource };
