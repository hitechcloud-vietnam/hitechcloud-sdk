"""Cloud Virtual Machine resource (9 endpoints)"""

from .base import BaseResource

class CloudVmResource(BaseResource):
    """Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE"""

    def get_upgrade_options(self, service_id: int) -> dict:
        """GET /api/service/{id}/upgrade - List resource upgrade options"""
        return self._http.get(f"/api/service/{service_id}/upgrade")

    def request_upgrade(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/upgrade - Estimate or request upgrade"""
        return self._http.post(f"/api/service/{service_id}/upgrade", kwargs)

    def get_resources(self, service_id: int) -> dict:
        """GET /api/service/{id}/resources - Show available and used resources"""
        return self._http.get(f"/api/service/{service_id}/resources")

    def list_rebuild_templates(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/templates/{vmid} - List rebuild templates"""
        return self._http.get(f"/api/service/{service_id}/templates/{vmid}")

    def get_memory_usage(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/usage/memory")

    def list_iso_images(self, service_id: int, vmid: int) -> dict:
        """GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM"""
        return self._http.get(f"/api/service/{service_id}/vms/{vmid}/images")

    def mount_iso(self, service_id: int, vmid: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/images", kwargs)

    def set_boot_order(self, service_id: int, vmid: int, **kwargs) -> dict:
        """POST /api/service/{id}/vms/{vmid}/boot - Change boot order"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/boot", kwargs)

    def enable_pxe(self, service_id: int, vmid: int) -> dict:
        """POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE"""
        return self._http.post(f"/api/service/{service_id}/vms/{vmid}/tuntap")
