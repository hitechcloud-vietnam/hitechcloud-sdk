"""Notifications resource (3 endpoints)"""

from . import BaseResource


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

    def get_preferences(self) -> dict:
        """GET /api/notifications/preferences - Get notification preferences"""
        return self._http.get("/api/notifications/preferences")

    def update_preferences(self, **kwargs) -> dict:
        """PUT /api/notifications/preferences - Update notification preferences"""
        return self._http.put("/api/notifications/preferences", kwargs)
