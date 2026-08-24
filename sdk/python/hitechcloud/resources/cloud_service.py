"""Cloud Service resource (10 endpoints)"""

from .base import BaseResource

class CloudServiceResource(BaseResource):
    """Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces"""

    def shutdown_vm(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/shutdown")

    def reset_vm(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/reset")

    def change_hostname(self, service_id: int, vmid: int, hostname: str) -> dict:
        """POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/hostname", {"hostname": hostname})

    def list_ip_pools(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/ippool - List IP pools"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/ippool")

    def allocate_ip(self, service_id: int, vmid: int, pool: str) -> dict:
        """POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/ippool/{pool}")

    def list_networks(self, service_id: int) -> dict:
        """GET /api/service/{id}/networks - List available networks"""
        return self._http.get(f"/api/service/{service_id}/networks")

    def add_interface(self, service_id: int, vmid: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/interfaces", kwargs)

    def get_interface(self, service_id: int, vmid: int, iface: str) -> dict:
        """GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/interfaces/{iface}")

    def update_interface(self, service_id: int, vmid: int, iface: str, **kwargs) -> dict:
        """PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface"""
        return self._http.put(f"/api/service/{service_id}/vms/{vmid}/interfaces/{iface}", kwargs)

    def remove_interface(self, service_id: int, vmid: int, iface: str) -> dict:
        """DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface"""
        return self._http.delete(f"/api/service/{service_id}/vms/{vmid}/interfaces/{iface}")
