"use strict";

const { BaseResource } = require("./base");

class VNeIdeKycResource extends BaseResource {
  async startPersonalEkyc(params = {}) {
    return this._http.get("$/api/vneidekyc/ekyc/session");
  }

  async getEkycSession(sessionHash) {
    return this._http.get("$/api/vneidekyc/ekyc/session/{session_hash}");
  }

  async listClientSessions(clientId) {
    return this._http.get("$/api/vneidekyc/ekyc/list/{client_id}");
  }

  async uploadFile(sessionHash, data) {
    return this._http.post("$/api/vneidekyc/ekyc/{session_hash}/upload", data);
  }

  async submitEkyc(sessionHash, data) {
    return this._http.post("$/api/vneidekyc/ekyc/{session_hash}/submit", data);
  }

  async cancelSession(sessionHash) {
    return this._http.post("$/api/vneidekyc/ekyc/{session_hash}/cancel");
  }

  async acceptEkyc(sessionHash) {
    return this._http.post("$/api/vneidekyc/ekyc/{session_hash}/accept");
  }

  async rejectEkyc(sessionHash, data) {
    return this._http.post("$/api/vneidekyc/ekyc/{session_hash}/reject", data);
  }

  async lookupOrganization(data) {
    return this._http.post("$/api/vneidekyc/org/lookup", data);
  }

  async startOrgVerification(data) {
    return this._http.post("$/api/vneidekyc/org/start", data);
  }

  async getOrganization(orgHash) {
    return this._http.get("$/api/vneidekyc/org/{org_hash}");
  }

  async acceptOrganization(orgHash) {
    return this._http.post("$/api/vneidekyc/org/{org_hash}/accept");
  }

  async rejectOrganization(orgHash, data) {
    return this._http.post("$/api/vneidekyc/org/{org_hash}/reject", data);
  }

  async uploadSignedPdf(data) {
    return this._http.post("$/api/vneidekyc/pdf/upload", data);
  }

  async getSignedPdf(pdfHash) {
    return this._http.get("$/api/vneidekyc/pdf/{pdf_hash}");
  }

  async getClientStatus(clientId) {
    return this._http.get("$/api/vneidekyc/client/{client_id}/status");
  }

}

module.exports = { VNeIdeKycResource };
