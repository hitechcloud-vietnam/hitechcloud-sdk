"use strict";

const { BaseResource } = require("./base");

class SSLResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/certificate");
  }

  async get(certId) {
    return this._http.get("/api/certificate/{id}");
  }

  async getCrt(certId) {
    return this._http.get("/api/certificate/{id}/crt");
  }

  async listOrders(params = {}) {
    return this._http.get("/api/certificate/order");
  }

  async createOrder(data) {
    return this._http.post("/api/certificate/order", data);
  }

  async getOrderSoftware(productId) {
    return this._http.get("/api/certificate/order/{product_id}/software");
  }

}

module.exports = { SSLResource };
