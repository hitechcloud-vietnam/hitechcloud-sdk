"use strict";

const { BaseResource } = require("./base");

class BillingResource extends BaseResource {
  async getBalance() {
    return this._http.get("/api/balance");
  }

  async listInvoices(params = {}) {
    return this._http.get("/api/invoice", params);
  }

  async getInvoice(invoiceId) {
    return this._http.get(`/api/invoice/${invoiceId}`);
  }

  async applyCredit(invoiceId) {
    return this._http.post(`/api/invoice/${invoiceId}/credit`);
  }

  async getPaymentMethods() {
    return this._http.get("/api/payment");
  }

  async getPaymentFees() {
    return this._http.get("/api/payment/fees");
  }
}

module.exports = { BillingResource };
