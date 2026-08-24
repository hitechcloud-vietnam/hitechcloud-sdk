"""Cloud GPU resource (6 endpoints)"""

from .base import BaseResource


class CloudGpuResource(BaseResource):
    """Cloud GPU: GPU instance management"""

    def reboot(self, service_id: int) -> dict:
        """PUT /api/service/{id}/vms/reboot - Reboot virtual server"""
        return self._http.put(f"/api/service/{service_id}/vms/reboot")

    def stop(self, service_id: int) -> dict:
        """PUT /api/service/{id}/vms/stop - Stop virtual server"""
        return self._http.put(f"/api/service/{service_id}/vms/stop")

    def start(self, service_id: int) -> dict:
        """PUT /api/service/{id}/vms/start - Start virtual server"""
        return self._http.put(f"/api/service/{service_id}/vms/start")

    def get_firewall_rules(self, service_id: int) -> dict:
        """GET /api/service/{id}/vms/firewall - Get firewall rules"""
        return self._http.get(f"/api/service/{service_id}/vms/firewall")

    def add_firewall_rules(self, service_id: int, rules: list) -> dict:
        """POST /api/service/{id}/vms/firewall - Add firewall rules"""
        return self._http.post(f"/api/service/{service_id}/vms/firewall", {"rules": rules})

    def remove_firewall_rule(self, service_id: int, position: int) -> dict:
        """DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule"""
        return self._http.delete(f"/api/service/{service_id}/vms/firewall/{position}")
