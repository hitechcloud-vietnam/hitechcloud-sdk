"""HiTechCloudProxmox resource (10 endpoints)"""

from .base import BaseResource

class ProxmoxResource(BaseResource):
    """HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth"""

    def get_status(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpve/status - Get machine status"""
        return self._http.get(f"/api/service/{service_id}/htcpve/status")

    def power_action(self, service_id: int, action: str) -> dict:
        """POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)"""
        return self._http.post(f"/api/service/{service_id}/htcpve/power", {"action": action})

    def list_vms(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpve/vms - List machines"""
        return self._http.get(f"/api/service/{service_id}/htcpve/vms")

    def list_ips(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpve/ips - List addresses"""
        return self._http.get(f"/api/service/{service_id}/htcpve/ips")

    def set_rdns(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/htcpve/rdns - Set reverse DNS"""
        return self._http.post(f"/api/service/{service_id}/htcpve/rdns", kwargs)

    def list_backups(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpve/backups - List backups"""
        return self._http.get(f"/api/service/{service_id}/htcpve/backups")

    def create_backup(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/htcpve/backups - Create backup"""
        return self._http.post(f"/api/service/{service_id}/htcpve/backups", kwargs)

    def list_snapshots(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpve/snapshots - List snapshots"""
        return self._http.get(f"/api/service/{service_id}/htcpve/snapshots")

    def create_snapshot(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/htcpve/snapshots - Create snapshot"""
        return self._http.post(f"/api/service/{service_id}/htcpve/snapshots", kwargs)

    def get_bandwidth_usage(self, service_id: int) -> dict:
        """GET /api/service/{id}/htcpve/usage - Get bandwidth usage"""
        return self._http.get(f"/api/service/{service_id}/htcpve/usage")
