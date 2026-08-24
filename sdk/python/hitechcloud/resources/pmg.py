"""HiTechCloudPMG resource (4 endpoints)"""

from .base import BaseResource

class PmgResource(BaseResource):
    """HiTechCloudPMG: mail filtering configuration and management"""

    def get_config(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpmg/config - Get mail filtering configuration"""
        return self._http.get(f"/api/service/{service_id}/htcpmg/config")

    def add_domain(self, service_id: int, domain: str) -> dict:
        """POST /api/service/{id}/htcpmg/domains - Add a domain"""
        return self._http.post(f"/api/service/{service_id}/htcpmg/domains", {"domain": domain})

    def set_transport(self, service_id: int, domain: str, target: str) -> dict:
        """POST /api/service/{id}/htcpmg/transport - Set target mail server"""
        return self._http.post(f"/api/service/{service_id}/htcpmg/transport", {"domain": domain, "target": target})

    def get_stats(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpmg/stats - Get mail statistics"""
        return self._http.get(f"/api/service/{service_id}/htcpmg/stats")
