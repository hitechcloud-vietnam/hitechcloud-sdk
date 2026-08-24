"""Affiliate resource (6 endpoints)"""

from . import BaseResource


class AffiliateResource(BaseResource):
    """Affiliate: affiliate program management"""

    def get_details(self) -> dict:
        """GET /api/affiliate - Get affiliate account details"""
        return self._http.get("/api/affiliate")

    def get_balance(self) -> str:
        """GET /api/affiliate/balance - Get affiliate balance"""
        return self._http.get("/api/affiliate/balance")

    def get_payout(self) -> dict:
        """GET /api/affiliate/payout - Get payout details"""
        return self._http.get("/api/affiliate/payout")

    def update_payout(self, **kwargs) -> dict:
        """PUT /api/affiliate/payout - Update payout details"""
        return self._http.put("/api/affiliate/payout", kwargs)

    def list_referrals(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/affiliate/referrals - List referrals"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/affiliate/referrals", params)

    def list_transactions(self, page: int = None, per_page: int = None) -> dict:
        """GET /api/affiliate/transactions - List affiliate transactions"""
        params = {}
        if page is not None:
            params["page"] = page
        if per_page is not None:
            params["per_page"] = per_page
        return self._http.get("/api/affiliate/transactions", params)
