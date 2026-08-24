"""Contacts resource (5 endpoints)"""

from . import BaseResource


class ContactsResource(BaseResource):
    """Contacts: manage account contacts"""

    def list(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/contacts - List all contacts"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/contacts", params)

    def get(self, contact_id: int) -> dict:
        """GET /api/contacts/{id} - Get contact details"""
        return self._http.get(f"/api/contacts/{contact_id}")

    def create(self, **kwargs) -> dict:
        """POST /api/contacts - Create new contact"""
        return self._http.post("/api/contacts", kwargs)

    def update(self, contact_id: int, **kwargs) -> dict:
        """PUT /api/contacts/{id} - Update contact"""
        return self._http.put(f"/api/contacts/{contact_id}", kwargs)

    def delete(self, contact_id: int) -> dict:
        """DELETE /api/contacts/{id} - Delete contact"""
        return self._http.delete(f"/api/contacts/{contact_id}")
