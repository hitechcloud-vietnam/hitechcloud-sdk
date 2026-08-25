"use strict";

const { BaseResource } = require("./base");

class IpamResource extends BaseResource {
  async listIps(serviceId) {
    return this._http.get("/api/service/{id}/htcipam/ips");
  }

  async listSubnets(serviceId) {
    return this._http.get("/api/service/{id}/htcipam/subnets");
  }

  async listRdns(serviceId) {
    return this._http.get("/api/service/{id}/htcipam/rdns");
  }

  async setRdns(serviceId, data) {
    return this._http.post("/api/service/{id}/htcipam/rdns", data);
  }

}

module.exports = { IpamResource };
