"""Hosting Services resource (6 endpoints)"""

from .base import BaseResource

class HostingResource(BaseResource):
    """Hosting Services: reinstall, status, bandwidth, reset"""

    def get_reinstall_details(self, service_id: int) -> dict:
        """GET /api/service/{id}/reinstall - Return installation options"""
        return self._http.get(f"/api/service/{service_id}/reinstall")

    def reinstall(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/reinstall - Reinstall server"""
        return self._http.post(f"/api/service/{service_id}/reinstall", kwargs)

    def get_status(self, service_id: int) -> dict:
        """GET /api/service/{id}/status - Return server power status"""
        return self._http.get(f"/api/service/{service_id}/status")

    def get_bandwidth_graphs(self, service_id: int) -> dict:
        """GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs"""
        return self._http.get(f"/api/service/{service_id}/bandwidth-graphs")

    def get_bandwidth_usage(self, service_id: int) -> dict:
        """GET /api/service/{id}/bandwidth - Return bandwidth usage and billing"""
        return self._http.get(f"/api/service/{service_id}/bandwidth")

    def reset(self, service_id: int) -> dict:
        """POST /api/service/{id}/reset - Reset server"""
        return self._http.post(f"/api/service/{service_id}/reset")
