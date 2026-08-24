"""Service Status resource (2 endpoints)"""

from .base import BaseResource

class ServiceStatusResource(BaseResource):
    """Service Status: list and manage service statuses"""

    def list(self) -> dict:
        """GET /api/statuses - Returns a list of all statuses"""
        return self._http.get("/api/statuses")

    def get(self, status_id: int) -> dict:
        """PUT /api/statuses/{id} - Returns details of status"""
        return self._http.put(f"/api/statuses/{status_id}")
