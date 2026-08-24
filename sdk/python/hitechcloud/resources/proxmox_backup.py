"""Proxmox Backup resource (9 endpoints)"""

from .base import BaseResource

class ProxmoxBackupResource(BaseResource):
    """Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token"""

    def get_connection_info(self, service_id: int) -> dict:
        """GET /api/service/{id}/pbs - Get backup connection info"""
        return self._http.get(f"/api/service/{service_id}/pbs")

    def get_credentials(self, service_id: int) -> dict:
        """GET /api/service/{id}/pbs/credentials - Get backup credentials"""
        return self._http.get(f"/api/service/{service_id}/pbs/credentials")

    def get_usage(self, service_id: int) -> dict:
        """GET /api/service/{id}/pbs/usage - Get backup usage"""
        return self._http.get(f"/api/service/{service_id}/pbs/usage")

    def get_metrics(self, service_id: int) -> dict:
        """GET /api/service/{id}/pbs/metrics - Get backup metrics"""
        return self._http.get(f"/api/service/{service_id}/pbs/metrics")

    def list_snapshots(self, service_id: int) -> dict:
        """GET /api/service/{id}/pbs/snapshots - List snapshots"""
        return self._http.get(f"/api/service/{service_id}/pbs/snapshots")

    def list_groups(self, service_id: int) -> dict:
        """GET /api/service/{id}/pbs/groups - List backup groups"""
        return self._http.get(f"/api/service/{service_id}/pbs/groups")

    def change_password(self, service_id: int, password: str) -> dict:
        """POST /api/service/{id}/pbs/password - Change backup password"""
        return self._http.post(f"/api/service/{service_id}/pbs/password", {"password": password})

    def rotate_token(self, service_id: int) -> dict:
        """POST /api/service/{id}/pbs/token - Rotate API token"""
        return self._http.post(f"/api/service/{service_id}/pbs/token")

    def revoke_token(self, service_id: int) -> dict:
        """DELETE /api/service/{id}/pbs/token - Revoke API token"""
        return self._http.delete(f"/api/service/{service_id}/pbs/token")
