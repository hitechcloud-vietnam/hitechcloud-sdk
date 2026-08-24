"use strict";

const { BaseResource } = require("./base");

class PartnerResource extends BaseResource {
  async getPartnerInfo() {
    return this._http.get("$/api/partner");
  }

  async apply(data) {
    return this._http.post("$/api/partner/apply", data);
  }

  async listTiers() {
    return this._http.get("$/api/partner/tiers");
  }

  async getPricing() {
    return this._http.get("$/api/partner/pricing");
  }

  async listCustomers() {
    return this._http.get("$/api/partner/customers");
  }

  async getEarnings() {
    return this._http.get("$/api/partner/earnings");
  }

  async getWallet() {
    return this._http.get("$/api/partner/wallet");
  }

  async listPayouts() {
    return this._http.get("$/api/partner/payouts");
  }

  async requestPayout(data) {
    return this._http.post("$/api/partner/payouts", data);
  }

  async listLeads() {
    return this._http.get("$/api/partner/leads");
  }

  async createLead(data) {
    return this._http.post("$/api/partner/leads", data);
  }

  async getReferral() {
    return this._http.get("$/api/partner/referral");
  }

  async getRates() {
    return this._http.get("$/api/partner/rates");
  }

}

module.exports = { PartnerResource };
