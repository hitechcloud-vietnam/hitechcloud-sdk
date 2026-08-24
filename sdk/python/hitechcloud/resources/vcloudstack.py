"""vCloudStack Public Cloud resource (4 endpoints)"""

from .base import BaseResource

class VCloudStackResource(BaseResource):
    """vCloudStack Public Cloud: rescue, unrescue, console, usage"""

    def rescue_vm(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/rescue")

    def unrescue_vm(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/unrescue")

    def get_console(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/console - Get VM console"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/console")

    def get_usage(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/usage")
