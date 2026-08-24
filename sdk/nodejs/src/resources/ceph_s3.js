"use strict";

const { BaseResource } = require("./base");

class CephS3Resource extends BaseResource {
  async getConnectionInfo(serviceId) {
    return this._http.get("$/api/service/{id}/s3");
  }

  async getCredentials(serviceId) {
    return this._http.get("$/api/service/{id}/s3/credentials");
  }

  async getUsage(serviceId) {
    return this._http.get("$/api/service/{id}/s3/usage");
  }

  async getMetrics(serviceId) {
    return this._http.get("$/api/service/{id}/s3/metrics");
  }

  async listBuckets(serviceId) {
    return this._http.get("$/api/service/{id}/s3/buckets");
  }

  async createBucket(serviceId, data) {
    return this._http.post("$/api/service/{id}/s3/buckets", data);
  }

  async deleteBucket(serviceId, bucket) {
    return this._http.delete(`/api/service/{id}/s3/buckets/${bucket}`);
  }

  async listSubusers(serviceId) {
    return this._http.get("$/api/service/{id}/s3/subusers");
  }

  async createSubuser(serviceId, data) {
    return this._http.post("$/api/service/{id}/s3/subusers", data);
  }

  async deleteSubuser(serviceId, subuser) {
    return this._http.delete(`/api/service/{id}/s3/subusers/${subuser}`);
  }

  async rotateSecretKey(serviceId) {
    return this._http.post("$/api/service/{id}/s3/key");
  }

}

module.exports = { CephS3Resource };
