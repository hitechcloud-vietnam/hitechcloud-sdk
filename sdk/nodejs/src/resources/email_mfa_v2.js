"use strict";

const { BaseResource } = require("./base");

class EmailMfaV2Resource extends BaseResource {
  async getMfaStatus(userType, userId) {
    return this._http.get("/api/email_mfa_v2/status/{user_type}/{user_id}");
  }

  async sendCode(data) {
    return this._http.post("/api/email_mfa_v2/send", data);
  }

  async verifyCode(data) {
    return this._http.post("/api/email_mfa_v2/verify", data);
  }

  async listActiveCodes(userType, userId) {
    return this._http.get("/api/email_mfa_v2/list/{user_type}/{user_id}");
  }

  async revokeAllCodes(data) {
    return this._http.post("/api/email_mfa_v2/revokeall", data);
  }

  async disableMfa() {
    return this._http.post("/api/email_mfa_v2/disable");
  }

}

module.exports = { EmailMfaV2Resource };
