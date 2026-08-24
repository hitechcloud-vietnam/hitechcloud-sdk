"use strict";

const { BaseResource } = require("./base");

class NotificationsResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("$/api/notifications");
  }

  async getNew() {
    return this._http.get("$/api/notifications/new");
  }

  async acknowledge(notificationId) {
    return this._http.put("$/api/notifications/{id}/ack");
  }

}

module.exports = { NotificationsResource };
