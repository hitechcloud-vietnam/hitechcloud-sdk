"use strict";

const { BaseResource } = require("./base");

class CartResource extends BaseResource {
  async get() {
    return this._http.get("/api/cart");
  }

  async add(productId, data = {}) {
    return this._http.post("/api/cart", { product_id: productId, ...data });
  }

  async remove(itemId) {
    return this._http.delete(`/api/cart/${itemId}`);
  }

  async applyPromo(code) {
    return this._http.post("/api/cart/promo", { code });
  }

  async checkout(data = {}) {
    return this._http.post("/api/cart/checkout", data);
  }

  async getPaymentMethods() {
    return this._http.get("/api/cart/payment");
  }
}

module.exports = { CartResource };
