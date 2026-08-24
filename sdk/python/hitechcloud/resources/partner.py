"""Partner resource (13 endpoints)"""

from .base import BaseResource

class PartnerResource(BaseResource):
    """Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates"""

    def get_partner_info(self) -> dict:
        """GET /api/partner - Get partner info"""
        return self._http.get("/api/partner")

    def apply(self, **kwargs) -> dict:
        """POST /api/partner/apply - Apply to partner program"""
        return self._http.post("/api/partner/apply", kwargs)

    def list_tiers(self) -> dict:
        """GET /api/partner/tiers - List partner tiers"""
        return self._http.get("/api/partner/tiers")

    def get_pricing(self) -> dict:
        """GET /api/partner/pricing - Get partner pricing"""
        return self._http.get("/api/partner/pricing")

    def list_customers(self) -> dict:
        """GET /api/partner/customers - List customers"""
        return self._http.get("/api/partner/customers")

    def get_earnings(self) -> dict:
        """GET /api/partner/earnings - Get earnings"""
        return self._http.get("/api/partner/earnings")

    def get_wallet(self) -> dict:
        """GET /api/partner/wallet - Get wallet balance"""
        return self._http.get("/api/partner/wallet")

    def list_payouts(self) -> dict:
        """GET /api/partner/payouts - List payouts"""
        return self._http.get("/api/partner/payouts")

    def request_payout(self, **kwargs) -> dict:
        """POST /api/partner/payouts - Request payout"""
        return self._http.post("/api/partner/payouts", kwargs)

    def list_leads(self) -> dict:
        """GET /api/partner/leads - List leads"""
        return self._http.get("/api/partner/leads")

    def create_lead(self, **kwargs) -> dict:
        """POST /api/partner/leads - Create lead"""
        return self._http.post("/api/partner/leads", kwargs)

    def get_referral(self) -> dict:
        """GET /api/partner/referral - Get referral info"""
        return self._http.get("/api/partner/referral")

    def get_rates(self) -> dict:
        """GET /api/partner/rates - Get exchange rates"""
        return self._http.get("/api/partner/rates")
