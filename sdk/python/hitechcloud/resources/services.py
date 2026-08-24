"""Services resource (9 endpoints)"""

from .base import BaseResource


class ServicesResource(BaseResource):
    """Services: list, details, cancel, renew, billing cycle"""

    def list(self, page: int = None, per_page: int = None, status: str = None) -> dict:
        """GET /api/service - List all services"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        if status is not None:
            params["status"] = status
        return self._http.get("/api/service", params)

    def get(self, service_id: int) -> dict:
        """GET /api/service/{id} - Return service details"""
        return self._http.get(f"/api/service/{service_id}")

    def list_methods(self, service_id: int) -> dict:
        """GET /api/service/{id}/methods - List methods available for service"""
        return self._http.get(f"/api/service/{service_id}/methods")

    def cancel(self, service_id: int, reason: str = None) -> dict:
        """POST /api/service/{id}/cancel - Request service cancellation"""
        data = {}
        if reason:
            data["reason"] = reason
        return self._http.post(f"/api/service/{service_id}/cancel", data)

    def get_label(self, service_id: int) -> dict:
        """GET /api/service/{id}/label - Show current service label"""
        return self._http.get(f"/api/service/{service_id}/label")

    def set_label(self, service_id: int, label: str) -> dict:
        """POST /api/service/{id}/label - Set new custom label"""
        return self._http.post(f"/api/service/{service_id}/label", {"label": label})

    def renew(self, service_id: int) -> dict:
        """POST /api/service/{id}/renew - Generate renewal invoice"""
        return self._http.post(f"/api/service/{service_id}/renew")

    def list_billing_cycles(self, service_id: int) -> dict:
        """GET /api/service/{id}/cycle - Get billing cycle options"""
        return self._http.get(f"/api/service/{service_id}/cycle")

    def change_billing_cycle(self, service_id: int, cycle_id: int) -> dict:
        """POST /api/service/{id}/cycle - Change billing cycle"""
        return self._http.post(f"/api/service/{service_id}/cycle", {"cycle_id": cycle_id})
