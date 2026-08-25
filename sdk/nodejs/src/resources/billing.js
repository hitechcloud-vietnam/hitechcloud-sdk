"use strict";

const { BaseResource } = require("./base");

class BillingResource extends BaseResource {
  async getBalance() {
    return this._http.get("/api/balance");
  }

  async listInvoices(params = {}) {
    return this._http.get("/api/invoice");
  }

  async getInvoice(invoiceId) {
    return this._http.get("/api/invoice/{id}");
  }

  async applyCredit(invoiceId, data) {
    return this._http.post("/api/invoice/{id}/credit", data);
  }

  async listPayments(params = {}) {
    return this._http.get("/api/payment");
  }

  async getPaymentFees() {
    return this._http.get("/api/payment/fees");
  }

}

module.exports = { BillingResource };
