"use strict";

const { BaseResource } = require("./base");

class SSLResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/certificate", params);
  }

  async get(certificateId) {
    return this._http.get(`/api/certificate/${certificateId}`);
  }

  async download(certificateId) {
    return this._http.get(`/api/certificate/${certificateId}/crt`);
  }

  async listAvailable() {
    return this._http.get("/api/certificate/order");
  }

  async order(data) {
    return this._http.post("/api/certificate/order", data);
  }

  async listServerSoftware(productId) {
    return this._http.get(`/api/certificate/order/${productId}/software`);
  }
}

module.exports = { SSLResource };
