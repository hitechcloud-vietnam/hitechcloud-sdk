"""Cloud Instance resource (25 endpoints)"""

from .base import BaseResource

class CloudInstanceResource(BaseResource):
    """Cloud Instance: full VM lifecycle management"""

    def list_vms(self, service_id: int) -> dict:
        """GET /api/service/{id}/vms - List virtual servers"""
        return self._http.get(f"/api/service/{service_id}/vms")

    def create_vm(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms - Create new virtual server"""
        return self._http.post(f"/api/service/{service_id}/vms", kwargs)

    def get_vm(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid} - Get VM details"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}")

    def destroy_vm(self, service_id: int, vmid: int) -> dict:
        """DELETE /api/service/{id}/vms/{vmid} - Remove virtual server"""
        return self._http.delete(f"/api/service/{service_id}/vms/{vmid}")

    def resize_vm(self, service_id: int, vmid: int, **kwargs) -> dict:
        """PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server"""
        return self._http.put(f"/api/service/{service_id}/vms/{vmid}", kwargs)

    def stop_vm(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/stop")

    def start_vm(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/start - Start virtual server"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/start")

    def reboot_vm(self, service_id: int, vmid: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/reboot", kwargs)

    def reset_password(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/resetpwd")

    def rebuild_vm(self, service_id: int, vmid: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/rebuild", kwargs)

    def list_vm_ips(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/ips")

    def assign_ip(self, service_id: int, vmid: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/ips", kwargs)

    def list_interfaces(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/interfaces")

    def get_cpu_usage(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/usage/cpu")

    def get_network_usage(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/usage/net")

    def get_disk_usage(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/usage/disk")

    def list_disks(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/storage")

    def resize_disk(self, service_id: int, vmid: int, diskid: int, **kwargs) -> dict:
        """PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk"""
        return self._http.put(f"/api/service/{service_id}/vms/{vmid}/storage/{diskid}", kwargs)

    def list_iso_images(self, service_id: int) -> dict:
        """GET /api/service/{id}/images - List ISO images"""
        return self._http.get(f"/api/service/{service_id}/images")

    def add_iso_image(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/images - Add ISO image"""
        return self._http.post(f"/api/service/{service_id}/images", kwargs)

    def list_available_ips(self, service_id: int, vmid: int, iface: str) -> dict:
        """GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/interfaces/{iface}/ips")

    def remove_ip(self, service_id: int, vmid: int, ipid: int) -> dict:
        """DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM"""
        return self._http.delete(f"/api/service/{service_id}/vms/{vmid}/ips/{ipid}")

    def get_rdns(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/rdns")

    def update_rdns(self, service_id: int, vmid: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/rdns", kwargs)

    def rebuild_network(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/rebuild_network")
