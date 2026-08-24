"use strict";

const { BaseResource } = require("./base");

class NotificationsResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/notifications", params);
  }

  async getPreferences() {
    return this._http.get("/api/notifications/preferences");
  }

  async updatePreferences(data) {
    return this._http.put("/api/notifications/preferences", data);
  }
}

module.exports = { NotificationsResource };
