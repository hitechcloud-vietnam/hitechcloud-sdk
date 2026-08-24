"use strict";

const { BaseResource } = require("./base");

class ProxmoxBackupResource extends BaseResource {
  async getConnectionInfo(serviceId) {
    return this._http.get("$/api/service/{id}/pbs");
  }

  async getCredentials(serviceId) {
    return this._http.get("$/api/service/{id}/pbs/credentials");
  }

  async getUsage(serviceId) {
    return this._http.get("$/api/service/{id}/pbs/usage");
  }

  async getMetrics(serviceId) {
    return this._http.get("$/api/service/{id}/pbs/metrics");
  }

  async listSnapshots(serviceId) {
    return this._http.get("$/api/service/{id}/pbs/snapshots");
  }

  async listGroups(serviceId) {
    return this._http.get("$/api/service/{id}/pbs/groups");
  }

  async changePassword(serviceId, data) {
    return this._http.post("$/api/service/{id}/pbs/password", data);
  }

  async rotateToken(serviceId) {
    return this._http.post("$/api/service/{id}/pbs/token");
  }

  async revokeToken(serviceId) {
    return this._http.delete("$/api/service/{id}/pbs/token");
  }

}

module.exports = { ProxmoxBackupResource };
