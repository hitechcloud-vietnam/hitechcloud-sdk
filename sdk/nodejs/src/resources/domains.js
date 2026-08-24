"use strict";

const { BaseResource } = require("./base");

class DomainsResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/domain", params);
  }

  async get(domainId) {
    return this._http.get(`/api/domain/${domainId}`);
  }

  async getByName(name) {
    return this._http.get(`/api/domain/name/${name}`);
  }

  async whois(domain) {
    return this._http.get(`/api/whois/${domain}`);
  }

  async whoisLookup(domain) {
    return this._http.get(`/api/whoislookup/${domain}`);
  }

  async checkAvailability(domain) {
    return this._http.get(`/api/domain/availability/${domain}`);
  }

  async getNameservers(domainId) {
    return this._http.get(`/api/domain/${domainId}/ns`);
  }

  async updateNameservers(domainId, ns) {
    return this._http.put(`/api/domain/${domainId}/ns`, ns);
  }

  async getEppCode(domainId) {
    return this._http.get(`/api/domain/${domainId}/epp`);
  }

  async sync(domainId) {
    return this._http.get(`/api/domain/${domainId}/sync`);
  }

  async getLock(domainId) {
    return this._http.get(`/api/domain/${domainId}/reglock`);
  }

  async updateLock(domainId, reglock) {
    return this._http.put(`/api/domain/${domainId}/reglock`, { reglock });
  }

  async updateIdProtection(domainId, idprotection) {
    return this._http.put(`/api/domain/${domainId}/idprotection`, { idprotection });
  }

  async getContact(domainId) {
    return this._http.get(`/api/domain/${domainId}/contact`);
  }

  async updateContact(domainId, data) {
    return this._http.put(`/api/domain/${domainId}/contact`, data);
  }

  async getEmailForwarding(domainId) {
    return this._http.get(`/api/domain/${domainId}/email/forwarding`);
  }

  async updateEmailForwarding(domainId, entries) {
    return this._http.put(`/api/domain/${domainId}/email/forwarding`, { entries });
  }

  async getAvailableTlds() {
    return this._http.get("/api/domain/order");
  }

  async order(domain, years = 1, data = {}) {
    return this._http.post("/api/domain/order", { domain, years, ...data });
  }

  async renew(domainId, years = 1) {
    return this._http.post(`/api/domain/${domainId}/renew`, { years });
  }

  async getTldForm(tldId) {
    return this._http.get(`/api/domain/order/${tldId}/form`);
  }

  async getDocuments(domainId) {
    return this._http.get(`/api/domain/${domainId}/documents`);
  }
}

module.exports = { DomainsResource };
