"use strict";

const { BaseResource } = require("./base");

class AffiliateResource extends BaseResource {
  async getSummary() {
    return this._http.get("$/api/affiliates/summary");
  }

  async listCampaigns() {
    return this._http.get("$/api/affiliates/campaigns");
  }

  async listCommissions(params = {}) {
    return this._http.get("$/api/affiliates/commissions");
  }

  async listPayouts() {
    return this._http.get("$/api/affiliates/payouts");
  }

  async listVouchers() {
    return this._http.get("$/api/affiliates/vouchers");
  }

  async listCommissionPlans() {
    return this._http.get("$/api/affiliates/commissionplans");
  }

}

module.exports = { AffiliateResource };
