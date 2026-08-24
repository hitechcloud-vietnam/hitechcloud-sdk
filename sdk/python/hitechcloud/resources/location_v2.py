"""LocationV2 resource (4 endpoints)"""

from .base import BaseResource

class LocationV2Resource(BaseResource):
    """LocationV2: countries, states, cities lookup"""

    def list_countries(self) -> dict:
        """GET /api/location_v2/countries - Return list of countries"""
        return self._http.get("/api/location_v2/countries")

    def get_states(self, country_code: str) -> dict:
        """GET /api/location_v2/{code}/state - Return states for a country code"""
        return self._http.get(f"/api/location_v2/{country_code}/state")

    def get_cities(self, state_id: int) -> dict:
        """GET /api/location_v2/state/{id}/city - Return cities for a state ID"""
        return self._http.get(f"/api/location_v2/state/{state_id}/city")

    def get_cities_by_state_name(self, name: str) -> dict:
        """GET /api/location_v2/state/city/{name} - Return cities for a state name"""
        return self._http.get(f"/api/location_v2/state/city/{name}")
