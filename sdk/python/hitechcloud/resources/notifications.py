"""Notifications resource (3 endpoints)"""

from .base import BaseResource


class NotificationsResource(BaseResource):
    """Notifications: manage notification preferences"""

    def list(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/notifications - List all notifications"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/notifications", params)

    def list_new(self) -> dict:
        """GET /api/notifications/new - Return only new portal notifications"""
        return self._http.get("/api/notifications/new")

    def acknowledge(self, notification_id: int) -> dict:
        """PUT /api/notifications/{id}/ack - Mark notification as read"""
        return self._http.put(f"/api/notifications/{notification_id}/ack")
