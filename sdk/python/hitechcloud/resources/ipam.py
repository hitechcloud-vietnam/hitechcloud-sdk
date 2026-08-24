"""HiTechCloudIPAM resource (4 endpoints)"""

from .base import BaseResource

class IpamResource(BaseResource):
    """HiTechCloudIPAM: IP addresses, subnets, reverse DNS"""

    def list_ips(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcipam/ips - List IP addresses"""
        return self._http.get(f"/api/service/{service_id}/htcipam/ips")

    def list_subnets(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcipam/subnets - List subnets"""
        return self._http.get(f"/api/service/{service_id}/htcipam/subnets")

    def list_rdns(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcipam/rdns - List reverse DNS records"""
        return self._http.get(f"/api/service/{service_id}/htcipam/rdns")

    def set_rdns(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/htcipam/rdns - Set reverse DNS"""
        return self._http.post(f"/api/service/{service_id}/htcipam/rdns", kwargs)
