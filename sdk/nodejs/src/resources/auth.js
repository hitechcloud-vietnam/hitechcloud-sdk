"use strict";

const { BaseResource } = require("./base");

class AuthResource extends BaseResource {
  async login(email, password) {
    return this._http.post("$/api/login");
  }

  async logout() {
    return this._http.post("$/api/logout");
  }

  async refreshToken() {
    return this._http.post("$/api/token");
  }

  async revokeToken() {
    return this._http.post("$/api/revoke");
  }

  async passwordReset(email) {
    return this._http.post("$/api/passwordreset");
  }

  async signup(email, password, firstName, lastName) {
    return this._http.post("$/api/signup");
  }

}

module.exports = { AuthResource };
