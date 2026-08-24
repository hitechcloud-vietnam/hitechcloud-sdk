"use strict";

const { BaseResource } = require("./base");

class CloudGpuResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/gpu", params);
  }

  async get(gpuId) {
    return this._http.get(`/api/gpu/${gpuId}`);
  }

  async start(gpuId) {
    return this._http.post(`/api/gpu/${gpuId}/start`);
  }

  async stop(gpuId) {
    return this._http.post(`/api/gpu/${gpuId}/stop`);
  }

  async restart(gpuId) {
    return this._http.post(`/api/gpu/${gpuId}/restart`);
  }

  async getConsole(gpuId) {
    return this._http.get(`/api/gpu/${gpuId}/console`);
  }
}

module.exports = { CloudGpuResource };
