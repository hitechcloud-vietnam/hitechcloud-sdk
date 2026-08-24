"""Contacts resource (5 endpoints)"""

from .base import BaseResource


class ContactsResource(BaseResource):
    """Contacts: manage account contacts"""

    def list(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/contact - Return a list of contacts on this account"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/contact", params)

    def create(self, **kwargs) -> dict:
        """POST /api/contact - Create new contact account"""
        return self._http.post("/api/contact", kwargs)

    def get_privileges(self) -> dict:
        """GET /api/contact/privileges - List possible contact privileges"""
        return self._http.get("/api/contact/privileges")

    def get(self, contact_id: int) -> dict:
        """GET /api/contact/{id} - Get contact details"""
        return self._http.get(f"/api/contact/{contact_id}")

    def update(self, contact_id: int, **kwargs) -> dict:
        """PUT /api/contact/{id} - Update contact details"""
        return self._http.put(f"/api/contact/{contact_id}", kwargs)
