"use strict";

const { BaseResource } = require("./base");

class LocationV2Resource extends BaseResource {
  async listCountries() {
    return this._http.get("$/api/location_v2/countries");
  }

  async listStates(code) {
    return this._http.get(`/api/location_v2/${code}/state`);
  }

  async listCities(stateId) {
    return this._http.get("$/api/location_v2/state/{id}/city");
  }

  async getCity(name) {
    return this._http.get(`/api/location_v2/state/city/${name}`);
  }

}

module.exports = { LocationV2Resource };
