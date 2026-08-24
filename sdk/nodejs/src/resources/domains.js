"use strict";

const { BaseResource } = require("./base");

class DomainsResource extends BaseResource {
  async whois(domain) {
    return this._http.get(`/api/whois/${domain}`);
  }

  async list(params = {}) {
    return this._http.get("$/api/domain");
  }

  async get(domainId) {
    return this._http.get("$/api/domain/{id}");
  }

  async getByName(name) {
    return this._http.get(`/api/domain/name/${name}`);
  }

  async getNameservers(domainId) {
    return this._http.get("$/api/domain/{id}/ns");
  }

  async setNameservers(domainId, data) {
    return this._http.put("$/api/domain/{id}/ns", data);
  }

  async getEppCode(domainId) {
    return this._http.get("$/api/domain/{id}/epp");
  }

  async sync(domainId) {
    return this._http.get("$/api/domain/{id}/sync");
  }

  async getRegLock(domainId) {
    return this._http.get("$/api/domain/{id}/reglock");
  }

  async setRegLock(domainId, data) {
    return this._http.put("$/api/domain/{id}/reglock", data);
  }

  async toggleIdProtection(domainId, data) {
    return this._http.put("$/api/domain/{id}/idprotection", data);
  }

  async getContacts(domainId) {
    return this._http.get("$/api/domain/{id}/contact");
  }

  async setContacts(domainId, data) {
    return this._http.put("$/api/domain/{id}/contact", data);
  }

  async getEmailForwarding(domainId) {
    return this._http.get("$/api/domain/{id}/email/forwarding");
  }

  async setEmailForwarding(domainId, data) {
    return this._http.put("$/api/domain/{id}/email/forwarding", data);
  }

  async checkAvailability(domain) {
    return this._http.get(`/api/domain/availability/${domain}`);
  }

  async listOrders(params = {}) {
    return this._http.get("$/api/domain/order");
  }

  async createOrder(data) {
    return this._http.post("$/api/domain/order", data);
  }

  async getOrderForm(orderId) {
    return this._http.get("$/api/domain/order/{id}/form");
  }

  async renew(domainId, data) {
    return this._http.post("$/api/domain/{id}/renew", data);
  }

  async whoisLookup(domain) {
    return this._http.get(`/api/whoislookup/${domain}`);
  }

  async getDocuments(domainId) {
    return this._http.get("$/api/domain/{id}/documents");
  }

}

module.exports = { DomainsResource };
