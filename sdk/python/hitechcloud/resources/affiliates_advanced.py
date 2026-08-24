"""AffiliatesAdvanced resource (14 endpoints)"""

from .base import BaseResource

class AffiliatesAdvancedResource(BaseResource):
    """AffiliatesAdvanced: advanced affiliate management with client_id"""

    def get_info(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/info - Get affiliate account info"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/info")

    def get_stats(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/stats")

    def get_commission_plans(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/commission-plans")

    def get_vouchers(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/vouchers")

    def get_commissions(self, client_id: int, **kwargs) -> dict:
        """GET /api/affiliates_adv/{client_id}/commissions - Get commissions"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/commissions", kwargs)

    def get_referrals(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/referrals - Get referred clients"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/referrals")

    def get_payouts(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/payouts - Get payout history"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/payouts")

    def get_campaigns(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/campaigns")

    def get_audit_log(self, client_id: int) -> dict:
        """GET /api/affiliates_adv/{client_id}/audit - Get activity log"""
        return self._http.get(f"/api/affiliates_adv/{client_id}/audit")

    def activate(self, client_id: int) -> dict:
        """POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account"""
        return self._http.post(f"/api/affiliates_adv/{client_id}/activate")

    def set_commission_plan(self, client_id: int, commission_id: int) -> dict:
        """POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan"""
        return self._http.post(f"/api/affiliates_adv/{client_id}/commission-plan/{commission_id}")

    def create_voucher(self, client_id: int, plan_id: int, **kwargs) -> dict:
        """POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher"""
        return self._http.post(f"/api/affiliates_adv/{client_id}/vouchers/{plan_id}", kwargs)

    def delete_voucher(self, client_id: int, voucher_id: int) -> dict:
        """DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher"""
        return self._http.delete(f"/api/affiliates_adv/{client_id}/vouchers/{voucher_id}")

    def set_landing_page(self, client_id: int, **kwargs) -> dict:
        """POST /api/affiliates_adv/{client_id}/landing-page - Set landing page"""
        return self._http.post(f"/api/affiliates_adv/{client_id}/landing-page", kwargs)
