"""Virtualizor resource (4 endpoints)"""

from . import BaseResource


class VirtualizorResource(BaseResource):
    """Virtualizor: VPS management via Virtualizor panel"""

    def list(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/virtualizor - List Virtualizor VPS instances"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/virtualizor", params)

    def get(self, vps_id: int) -> dict:
        """GET /api/virtualizor/{id} - Get VPS details"""
        return self._http.get(f"/api/virtualizor/{vps_id}")

    def start(self, vps_id: int) -> dict:
        """POST /api/virtualizor/{id}/start - Start VPS"""
        return self._http.post(f"/api/virtualizor/{vps_id}/start")

    def stop(self, vps_id: int) -> dict:
        """POST /api/virtualizor/{id}/stop - Stop VPS"""
        return self._http.post(f"/api/virtualizor/{vps_id}/stop")
