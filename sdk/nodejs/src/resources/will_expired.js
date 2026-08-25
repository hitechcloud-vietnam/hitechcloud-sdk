"use strict";

const { BaseResource } = require("./base");

class WillExpiredResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/willexpired");
  }

  async getSummary(params = {}) {
    return this._http.get("/api/willexpired/summary");
  }

  async getConfig() {
    return this._http.get("/api/willexpired/config");
  }

  async listInvoices() {
    return this._http.get("/api/willexpired/invoices");
  }

  async listRequests() {
    return this._http.get("/api/willexpired/requests");
  }

  async exportAll() {
    return this._http.get("/api/willexpired/export");
  }

  async getItem(itemType, itemId) {
    return this._http.get("/api/willexpired/{type}/{id}");
  }

  async renew(itemType, itemId) {
    return this._http.post("/api/willexpired/{type}/{id}/renew");
  }

  async getAutorenew(itemType, itemId) {
    return this._http.get("/api/willexpired/{type}/{id}/autorenew");
  }

  async setAutorenew(itemType, itemId, data) {
    return this._http.put("/api/willexpired/{type}/{id}/autorenew", data);
  }

}

module.exports = { WillExpiredResource };
