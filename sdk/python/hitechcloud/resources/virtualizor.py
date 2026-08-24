"""Virtualizor resource (4 endpoints)"""

from .base import BaseResource


class VirtualizorResource(BaseResource):
    """Virtualizor: VPS management via Virtualizor panel"""

    def suspend(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/suspend")

    def unsuspend(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/unsuspend")

    def list_rebuild_templates(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/rebuild")

    def change_ssh_key(self, service_id: int, vmid: int, ssh_key: str) -> dict:
        """POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/addsshkey", {"ssh_key": ssh_key})
