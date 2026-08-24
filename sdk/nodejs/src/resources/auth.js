"use strict";

const { BaseResource } = require("./base");

class AuthResource extends BaseResource {
  async login(email, password) {
    return this._http.post("/api/auth/login", { email, password });
  }

  async logout() {
    return this._http.post("/api/auth/logout");
  }

  async refreshToken() {
    return this._http.post("/api/auth/refresh");
  }

  async revokeToken() {
    return this._http.post("/api/auth/revoke");
  }

  async passwordReset(email) {
    return this._http.post("/api/auth/password/reset", { email });
  }

  async signup(email, password, firstName, lastName) {
    return this._http.post("/api/auth/signup", {
      email,
      password,
      first_name: firstName,
      last_name: lastName,
    });
  }
}

module.exports = { AuthResource };
