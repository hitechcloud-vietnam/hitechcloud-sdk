"use strict";

const { BaseResource } = require("./base");

class CloudGpuResource extends BaseResource {
  async reboot(serviceId, data) {
    return this._http.put("/api/service/{id}/vms/reboot", data);
  }

  async stop(serviceId, data) {
    return this._http.put("/api/service/{id}/vms/stop", data);
  }

  async start(serviceId, data) {
    return this._http.put("/api/service/{id}/vms/start", data);
  }

  async getFirewall(serviceId) {
    return this._http.get("/api/service/{id}/vms/firewall");
  }

  async createFirewallRule(serviceId, data) {
    return this._http.post("/api/service/{id}/vms/firewall", data);
  }

  async deleteFirewallRule(serviceId, position) {
    return this._http.delete(`/api/service/{id}/vms/firewall/${position}`);
  }

}

module.exports = { CloudGpuResource };
