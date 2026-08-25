"use strict";

const { BaseResource } = require("./base");

class CollocationResource extends BaseResource {
  async listPdu(serviceId) {
    return this._http.get("/api/service/{id}/pdu");
  }

  async getPduPort(serviceId, port) {
    return this._http.get(`/api/service/{id}/pdu/${port}`);
  }

  async setPduPort(serviceId, port, data) {
    return this._http.post(`/api/service/{id}/pdu/${port}`, data);
  }

}

module.exports = { CollocationResource };
