"use strict";

const { BaseResource } = require("./base");

class ServicesResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/service", params);
  }

  async get(serviceId) {
    return this._http.get(`/api/service/${serviceId}`);
  }

  async listMethods() {
    return this._http.get("/api/service/methods");
  }

  async cancel(serviceId, reason) {
    return this._http.post(`/api/service/${serviceId}/cancel`, { reason });
  }

  async getLabel(serviceId) {
    return this._http.get(`/api/service/${serviceId}/label`);
  }

  async setLabel(serviceId, label) {
    return this._http.put(`/api/service/${serviceId}/label`, { label });
  }

  async renew(serviceId) {
    return this._http.post(`/api/service/${serviceId}/renew`);
  }

  async listBillingCycles(serviceId) {
    return this._http.get(`/api/service/${serviceId}/billing_cycles`);
  }

  async changeBillingCycle(serviceId, billingCycle) {
    return this._http.put(`/api/service/${serviceId}/billing_cycles`, {
      billing_cycle: billingCycle,
    });
  }
}

module.exports = { ServicesResource };
