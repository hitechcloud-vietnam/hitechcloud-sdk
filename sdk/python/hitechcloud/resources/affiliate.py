"""Affiliate resource (6 endpoints)"""

from .base import BaseResource


class AffiliateResource(BaseResource):
    """Affiliate: affiliate program management"""

    def get_summary(self) -> dict:
        """GET /api/affiliates/summary - Get Affiliate summary"""
        return self._http.get("/api/affiliates/summary")

    def list_campaigns(self) -> dict:
        """GET /api/affiliates/campaigns - Get Affiliate campaigns"""
        return self._http.get("/api/affiliates/campaigns")

    def list_commissions(self) -> dict:
        """GET /api/affiliates/commissions - Get Affiliate commissions"""
        return self._http.get("/api/affiliates/commissions")

    def list_payouts(self) -> dict:
        """GET /api/affiliates/payouts - Get Affiliate payouts"""
        return self._http.get("/api/affiliates/payouts")

    def list_vouchers(self) -> dict:
        """GET /api/affiliates/vouchers - Get Affiliate vouchers"""
        return self._http.get("/api/affiliates/vouchers")

    def list_commission_plans(self) -> dict:
        """GET /api/affiliates/commissionplans - Get Affiliate commission plans"""
        return self._http.get("/api/affiliates/commissionplans")
