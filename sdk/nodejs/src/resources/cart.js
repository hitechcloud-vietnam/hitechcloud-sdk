"use strict";

const { BaseResource } = require("./base");

class CartResource extends BaseResource {
  async listCategories() {
    return this._http.get("$/api/category");
  }

  async listProducts(categoryId) {
    return this._http.get("$/api/category/{category_id}/product");
  }

  async getProduct(productId) {
    return this._http.get("$/api/order/{product_id}");
  }

  async configureProduct(productId, data) {
    return this._http.post("$/api/order/{product_id}", data);
  }

  async checkout(data) {
    return this._http.post("$/api/order", data);
  }

  async getQuote(data) {
    return this._http.post("$/api/quote", data);
  }

}

module.exports = { CartResource };
