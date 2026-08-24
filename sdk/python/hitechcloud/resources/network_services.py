"""Network Services resource (3 endpoints)"""

from .base import BaseResource

class NetworkServicesResource(BaseResource):
    """Network Services: IP addresses and reverse DNS for services"""

    def list_ips(self, service_id: int) -> dict:
        """GET /api/service/{id}/ip - List Service IP Addresses"""
        return self._http.get(f"/api/service/{service_id}/ip")

    def get_rdns(self, service_id: int) -> dict:
        """GET /api/service/{id}/rdns - Get reverse DNS entries"""
        return self._http.get(f"/api/service/{service_id}/rdns")

    def update_rdns(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/rdns - Update reverse DNS entries"""
        return self._http.post(f"/api/service/{service_id}/rdns", kwargs)
