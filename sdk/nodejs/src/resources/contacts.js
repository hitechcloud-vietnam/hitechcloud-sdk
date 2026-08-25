"use strict";

const { BaseResource } = require("./base");

class ContactsResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/contact");
  }

  async create(data) {
    return this._http.post("/api/contact", data);
  }

  async getPrivileges() {
    return this._http.get("/api/contact/privileges");
  }

  async get(contactId) {
    return this._http.get("/api/contact/{id}");
  }

  async update(contactId, data) {
    return this._http.put("/api/contact/{id}", data);
  }

}

module.exports = { ContactsResource };
