"use strict";

const { BaseResource } = require("./base");

class ServicesResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("$/api/service");
  }

  async get(serviceId) {
    return this._http.get("$/api/service/{id}");
  }

  async getMethods(serviceId) {
    return this._http.get("$/api/service/{id}/methods");
  }

  async cancel(serviceId, data) {
    return this._http.post("$/api/service/{id}/cancel", data);
  }

  async getLabel(serviceId) {
    return this._http.get("$/api/service/{id}/label");
  }

  async setLabel(serviceId, data) {
    return this._http.post("$/api/service/{id}/label", data);
  }

  async renew(serviceId) {
    return this._http.post("$/api/service/{id}/renew");
  }

  async getCycle(serviceId) {
    return this._http.get("$/api/service/{id}/cycle");
  }

  async setCycle(serviceId, data) {
    return this._http.post("$/api/service/{id}/cycle", data);
  }

}

module.exports = { ServicesResource };
