"use strict";

const { BaseResource } = require("./base");

class AiFactoryResource extends BaseResource {
  async listTemplates(serviceId) {
    return this._http.get("$/api/service/{id}/templates");
  }

  async saveTemplate(serviceId, data) {
    return this._http.post("$/api/service/{id}/templates", data);
  }

  async getProvisioningMode(serviceId) {
    return this._http.get("$/api/service/{id}/hitechcloud/mode");
  }

  async getJsonExamples(serviceId) {
    return this._http.get("$/api/service/{id}/hitechcloud/examples");
  }

  async getApiSchema(serviceId) {
    return this._http.get("$/api/service/{id}/hitechcloud/schema");
  }

  async listFeaturedTemplates(serviceId) {
    return this._http.get("$/api/service/{id}/templates/featured");
  }

  async getTemplate(serviceId, templateId) {
    return this._http.get("$/api/service/{id}/templates/{template_id}");
  }

  async updateTemplate(serviceId, templateId, data) {
    return this._http.post("$/api/service/{id}/templates/{template_id}/update", data);
  }

  async deleteTemplate(serviceId, templateId) {
    return this._http.post("$/api/service/{id}/templates/{template_id}/delete");
  }

  async listInstances(serviceId) {
    return this._http.get("$/api/service/{id}/instances");
  }

  async createInstance(serviceId, data) {
    return this._http.post("$/api/service/{id}/instances", data);
  }

  async listInstanceTypes(serviceId) {
    return this._http.get("$/api/service/{id}/instances/types");
  }

  async getInstance(serviceId, instanceId) {
    return this._http.get("$/api/service/{id}/instances/{instance_id}");
  }

  async updateInstance(serviceId, instanceId, data) {
    return this._http.post("$/api/service/{id}/instances/{instance_id}/update", data);
  }

  async restartInstance(serviceId, instanceId) {
    return this._http.post("$/api/service/{id}/instances/{instance_id}/restart");
  }

  async deleteInstance(serviceId, instanceId) {
    return this._http.post("$/api/service/{id}/instances/{instance_id}/delete");
  }

  async getServiceInstance(serviceId) {
    return this._http.get("$/api/service/{id}/instance");
  }

  async syncServiceInstance(serviceId) {
    return this._http.post("$/api/service/{id}/instance/sync");
  }

  async restartServiceInstance(serviceId) {
    return this._http.post("$/api/service/{id}/instance/restart");
  }

  async updateServiceInstance(serviceId, data) {
    return this._http.post("$/api/service/{id}/instance/update", data);
  }

  async listSshKeys(serviceId) {
    return this._http.get("$/api/service/{id}/sshkeys");
  }

  async addSshKey(serviceId, data) {
    return this._http.post("$/api/service/{id}/sshkeys", data);
  }

  async getSshKey(serviceId, keyId) {
    return this._http.get("$/api/service/{id}/sshkeys/{key_id}");
  }

  async deleteSshKey(serviceId, keyId) {
    return this._http.post("$/api/service/{id}/sshkeys/{key_id}/delete");
  }

  async setDefaultSshKey(serviceId, keyId) {
    return this._http.post("$/api/service/{id}/sshkeys/{key_id}/setdefault");
  }

  async listVolumes(serviceId) {
    return this._http.get("$/api/service/{id}/volumes");
  }

  async createVolume(serviceId, data) {
    return this._http.post("$/api/service/{id}/volumes", data);
  }

  async listVolumeTypes(serviceId) {
    return this._http.get("$/api/service/{id}/volumes/types");
  }

  async getVolume(serviceId, volumeId) {
    return this._http.get("$/api/service/{id}/volumes/{volume_id}");
  }

  async deleteVolume(serviceId, volumeId) {
    return this._http.post("$/api/service/{id}/volumes/{volume_id}/delete");
  }

  async listClusters(serviceId) {
    return this._http.get("$/api/service/{id}/clusters");
  }

  async createCluster(serviceId, data) {
    return this._http.post("$/api/service/{id}/clusters", data);
  }

  async listClusterTypes(serviceId) {
    return this._http.get("$/api/service/{id}/clusters/types");
  }

  async getServiceCluster(serviceId) {
    return this._http.get("$/api/service/{id}/cluster");
  }

  async getCluster(serviceId, clusterId) {
    return this._http.get("$/api/service/{id}/clusters/{cluster_id}");
  }

  async deleteCluster(serviceId, clusterId) {
    return this._http.post("$/api/service/{id}/clusters/{cluster_id}/delete");
  }

}

module.exports = { AiFactoryResource };
