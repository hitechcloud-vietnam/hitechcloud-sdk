"use strict";

const { BaseResource } = require("./base");

class VirtualizorResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/virtualizor", params);
  }

  async get(vpsId) {
    return this._http.get(`/api/virtualizor/${vpsId}`);
  }

  async start(vpsId) {
    return this._http.post(`/api/virtualizor/${vpsId}/start`);
  }

  async stop(vpsId) {
    return this._http.post(`/api/virtualizor/${vpsId}/stop`);
  }
}

module.exports = { VirtualizorResource };
