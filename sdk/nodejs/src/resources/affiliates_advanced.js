"use strict";

const { BaseResource } = require("./base");

class AffiliatesAdvancedResource extends BaseResource {
  async getInfo(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/info");
  }

  async getStats(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/stats");
  }

  async getCommissionPlans(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/commission-plans");
  }

  async getVouchers(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/vouchers");
  }

  async getCommissions(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/commissions");
  }

  async getReferrals(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/referrals");
  }

  async getPayouts(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/payouts");
  }

  async getCampaigns(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/campaigns");
  }

  async getAudit(clientId) {
    return this._http.get("/api/affiliates_adv/{client_id}/audit");
  }

  async activate(clientId) {
    return this._http.post("/api/affiliates_adv/{client_id}/activate");
  }

  async setCommissionPlan(clientId, commissionId) {
    return this._http.post("/api/affiliates_adv/{client_id}/commission-plan/{commission_id}");
  }

  async generateVoucher(clientId, planId) {
    return this._http.post("/api/affiliates_adv/{client_id}/vouchers/{plan_id}");
  }

  async deleteVoucher(clientId, voucherId) {
    return this._http.delete("/api/affiliates_adv/{client_id}/vouchers/{voucher_id}");
  }

  async setLandingPage(clientId, data) {
    return this._http.post("/api/affiliates_adv/{client_id}/landing-page", data);
  }

}

module.exports = { AffiliatesAdvancedResource };
