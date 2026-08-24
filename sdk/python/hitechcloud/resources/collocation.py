"""Collocation Services resource (3 endpoints)"""

from .base import BaseResource

class CollocationResource(BaseResource):
    """Collocation Services: PDU port management"""

    def list_pdu_ports(self, service_id: int) -> dict:
        """GET /api/service/{id}/pdu - List PDU ports assigned to service"""
        return self._http.get(f"/api/service/{service_id}/pdu")

    def get_pdu_port_state(self, service_id: int, port: int) -> dict:
        """GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state"""
        return self._http.get(f"/api/service/{service_id}/pdu/{port}")

    def set_pdu_port_status(self, service_id: int, port: int, **kwargs) -> dict:
        """POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state"""
        return self._http.post(f"/api/service/{service_id}/pdu/{port}", kwargs)
