"use strict";

const { BaseResource } = require("./base");

class PasskeyV2Resource extends BaseResource {
  async getMfaStatus(userType, userId) {
    return this._http.get("/api/passkeyv2/status/{user_type}/{user_id}");
  }

  async listCredentials(userType, userId) {
    return this._http.get("/api/passkeyv2/credentials/{user_type}/{user_id}");
  }

  async deleteCredential(userType, userId, data) {
    return this._http.post("/api/passkeyv2/credentials/{user_type}/{user_id}/delete", data);
  }

  async sendEmailOtp(data) {
    return this._http.post("/api/passkeyv2/email_otp/send", data);
  }

  async verifyEmailOtp(data) {
    return this._http.post("/api/passkeyv2/email_otp/verify", data);
  }

  async disableMfa(userType, userId) {
    return this._http.post("/api/passkeyv2/disable/{user_type}/{user_id}");
  }

}

module.exports = { PasskeyV2Resource };
