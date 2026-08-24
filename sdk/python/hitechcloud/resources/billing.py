"""Billing & Contracts resource (6 endpoints)"""

from .base import BaseResource


class BillingResource(BaseResource):
    """Billing & Contracts: balance, invoices, payment methods"""

    def get_balance(self) -> dict:
        """GET /api/balance - Get account balance and credit"""
        return self._http.get("/api/balance")

    def list_invoices(self, page: int = None, per_page: int = None,
                      status: str = None) -> dict:
        """GET /api/invoice - List all invoices"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        if status is not None:
            params["status"] = status
        return self._http.get("/api/invoice", params)

    def get_invoice(self, invoice_id: int) -> dict:
        """GET /api/invoice/{id} - Get invoice details"""
        return self._http.get(f"/api/invoice/{invoice_id}")

    def apply_credit(self, invoice_id: int) -> dict:
        """POST /api/invoice/{id}/credit - Apply account credit to invoice"""
        return self._http.post(f"/api/invoice/{invoice_id}/credit")

    def get_payment_methods(self) -> dict:
        """GET /api/payment - List available payment methods"""
        return self._http.get("/api/payment")

    def get_payment_fees(self) -> dict:
        """GET /api/payment/fees - List payment methods with fees"""
        return self._http.get("/api/payment/fees")
