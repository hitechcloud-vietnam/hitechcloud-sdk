"""Bare Metal & Colocation resource (21 endpoints)"""

from .base import BaseResource

class BareMetalResource(BaseResource):
    """Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power"""

    def list_reinstall_templates(self, service_id: int) -> dict:
        """GET /api/service/{id}/reinstall/templates - List OS templates and recipes"""
        return self._http.get(f"/api/service/{service_id}/reinstall/templates")

    def cancel_diagnostics(self, service_id: int) -> dict:
        """POST /api/service/{id}/diag/cancel - Cancel diagnostics operation"""
        return self._http.post(f"/api/service/{service_id}/diag/cancel")

    def list_diagnostics_templates(self, service_id: int) -> dict:
        """GET /api/service/{id}/diag/templates - List diagnostics templates"""
        return self._http.get(f"/api/service/{service_id}/diag/templates")

    def get_diagnostics_status(self, service_id: int) -> dict:
        """GET /api/service/{id}/diag - Show diagnostic operation status"""
        return self._http.get(f"/api/service/{service_id}/diag")

    def run_diagnostics(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/diag - Start new diagnostic operation"""
        return self._http.post(f"/api/service/{service_id}/diag", kwargs)

    def list_rescue_templates(self, service_id: int) -> dict:
        """GET /api/service/{id}/rescue/templates - List rescue templates"""
        return self._http.get(f"/api/service/{service_id}/rescue/templates")

    def get_rescue_status(self, service_id: int) -> dict:
        """GET /api/service/{id}/rescue - Show rescue operation status"""
        return self._http.get(f"/api/service/{service_id}/rescue")

    def rescue(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/rescue - Start rescue operation"""
        return self._http.post(f"/api/service/{service_id}/rescue", kwargs)

    def cancel_rescue(self, service_id: int) -> dict:
        """POST /api/service/{id}/rescue/cancel - Cancel rescue operation"""
        return self._http.post(f"/api/service/{service_id}/rescue/cancel")

    def get_server_info(self, service_id: int) -> dict:
        """GET /api/service/{id}/info - Get server hardware and OS details"""
        return self._http.get(f"/api/service/{service_id}/info")

    def update_hostname(self, service_id: int, hostname: str) -> dict:
        """POST /api/service/{id}/hostname - Update server hostname"""
        return self._http.post(f"/api/service/{service_id}/hostname", {"hostname": hostname})

    def list_ips(self, service_id: int) -> dict:
        """GET /api/service/{id}/ips - List server IPs"""
        return self._http.get(f"/api/service/{service_id}/ips")

    def add_ip(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/ips - Add new IP to server"""
        return self._http.post(f"/api/service/{service_id}/ips", kwargs)

    def list_vlans(self, service_id: int) -> dict:
        """GET /api/service/{id}/vlans - List available VLANs"""
        return self._http.get(f"/api/service/{service_id}/vlans")

    def get_ip_details(self, service_id: int, ip: str) -> dict:
        """GET /api/service/{id}/ips/{ip} - Get IP details"""
        return self._http.get(f"/api/service/{service_id}/ips/{ip}")

    def edit_ip(self, service_id: int, ip: str, **kwargs) -> dict:
        """PUT /api/service/{id}/ips/{ip} - Edit IP"""
        return self._http.put(f"/api/service/{service_id}/ips/{ip}", kwargs)

    def get_reinstall_details(self, service_id: int) -> dict:
        """GET /api/service/{id}/reinstall - Return installation options"""
        return self._http.get(f"/api/service/{service_id}/reinstall")

    def reinstall(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/reinstall - Reinstall server"""
        return self._http.post(f"/api/service/{service_id}/reinstall", kwargs)

    def get_status(self, service_id: int) -> dict:
        """GET /api/service/{id}/status - Return server power status"""
        return self._http.get(f"/api/service/{service_id}/status")

    def power_action(self, service_id: int, action: str) -> dict:
        """POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)"""
        return self._http.post(f"/api/service/{service_id}/power/{action}")

    def list_servers_in_stock(self) -> dict:
        """GET /api/serverstock - List servers in stock"""
        return self._http.get("/api/serverstock")
