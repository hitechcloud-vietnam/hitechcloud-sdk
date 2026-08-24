"use strict";

const { BaseResource } = require("./base");

class AffiliateResource extends BaseResource {
  async getDetails() {
    return this._http.get("/api/affiliate");
  }

  async getBalance() {
    return this._http.get("/api/affiliate/balance");
  }

  async getPayout() {
    return this._http.get("/api/affiliate/payout");
  }

  async updatePayout(data) {
    return this._http.put("/api/affiliate/payout", data);
  }

  async listReferrals(params = {}) {
    return this._http.get("/api/affiliate/referrals", params);
  }

  async listTransactions(params = {}) {
    return this._http.get("/api/affiliate/transactions", params);
  }
}

module.exports = { AffiliateResource };
