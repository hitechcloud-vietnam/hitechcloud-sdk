"use strict";

const { BaseResource } = require("./base");

class DnsManageResource extends BaseResource {
  async getRecords(domainId) {
    return this._http.get(`/api/domain/${domainId}/dns`);
  }

  async createRecord(domainId, data) {
    return this._http.post(`/api/domain/${domainId}/dns`, data);
  }

  async updateRecord(domainId, index, data) {
    return this._http.put(`/api/domain/${domainId}/dns/${index}`, data);
  }

  async deleteRecord(domainId, index) {
    return this._http.delete(`/api/domain/${domainId}/dns/${index}`);
  }

  async getRecordTypes(domainId) {
    return this._http.get(`/api/domain/${domainId}/dns/types`);
  }

  async getDnssecFlags(domainId) {
    return this._http.get(`/api/domain/${domainId}/dnssec/flags`);
  }

  async getDnssecRecords(domainId) {
    return this._http.get(`/api/domain/${domainId}/dnssec`);
  }

  async createDnssecRecord(domainId, data) {
    return this._http.post(`/api/domain/${domainId}/dnssec`, data);
  }

  async deleteDnssecRecord(domainId) {
    return this._http.delete(`/api/domain/${domainId}/dnssec`);
  }

  async registerNameserver(domainId, nameserver, ip) {
    return this._http.post(`/api/domain/${domainId}/reg`, { nameserver, ip });
  }
}

module.exports = { DnsManageResource };
