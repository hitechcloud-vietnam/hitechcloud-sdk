"""WillExpired resource (10 endpoints)"""

from .base import BaseResource

class WillExpiredResource(BaseResource):
    """WillExpired: expiring services and domains management"""

    def list_expiring(self, **kwargs) -> dict:
        """GET /api/willexpired - List expiring services and domains"""
        return self._http.get("/api/willexpired", kwargs)

    def get_summary(self, **kwargs) -> dict:
        """GET /api/willexpired/summary - Expiring summary"""
        return self._http.get("/api/willexpired/summary", kwargs)

    def get_config(self) -> dict:
        """GET /api/willexpired/config - Module configuration"""
        return self._http.get("/api/willexpired/config")

    def list_open_invoices(self) -> dict:
        """GET /api/willexpired/invoices - Open renewal invoices"""
        return self._http.get("/api/willexpired/invoices")

    def list_requests(self) -> dict:
        """GET /api/willexpired/requests - Renewal request log"""
        return self._http.get("/api/willexpired/requests")

    def export_all(self) -> dict:
        """GET /api/willexpired/export - Export all expiring items"""
        return self._http.get("/api/willexpired/export")

    def get_item(self, item_type: str, item_id: int) -> dict:
        """GET /api/willexpired/{type}/{id} - Get item detail"""
        return self._http.get(f"/api/willexpired/{item_type}/{item_id}")

    def renew(self, item_type: str, item_id: int) -> dict:
        """POST /api/willexpired/{type}/{id}/renew - Renew item"""
        return self._http.post(f"/api/willexpired/{item_type}/{item_id}/renew")

    def get_autorenew(self, item_type: str, item_id: int) -> dict:
        """GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status"""
        return self._http.get(f"/api/willexpired/{item_type}/{item_id}/autorenew")

    def set_autorenew(self, item_type: str, item_id: int, enabled: bool) -> dict:
        """PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew"""
        return self._http.put(f"/api/willexpired/{item_type}/{item_id}/autorenew", {"enabled": enabled})
