"use strict";

const { BaseResource } = require("./base");

class ContactsResource extends BaseResource {
  async list(params = {}) {
    return this._http.get("/api/contacts", params);
  }

  async get(contactId) {
    return this._http.get(`/api/contacts/${contactId}`);
  }

  async create(data) {
    return this._http.post("/api/contacts", data);
  }

  async update(contactId, data) {
    return this._http.put(`/api/contacts/${contactId}`, data);
  }

  async delete(contactId) {
    return this._http.delete(`/api/contacts/${contactId}`);
  }
}

module.exports = { ContactsResource };
