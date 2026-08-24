"""User Profile resource (3 endpoints)"""

from . import BaseResource


class UsersResource(BaseResource):
    """User Profile: view/update account details, logs"""

    def get_details(self) -> dict:
        """GET /api/details - Return registration details for my account"""
        return self._http.get("/api/details")

    def update_details(self, **kwargs) -> dict:
        """PUT /api/details - Update registration details"""
        return self._http.put("/api/details", kwargs)

    def get_logs(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/logs - Returns logs from history"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/logs", params)
