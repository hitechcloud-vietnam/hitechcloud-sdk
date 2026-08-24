"""EmailMfaV2 resource (6 endpoints)"""

from .base import BaseResource

class EmailMfaV2Resource(BaseResource):
    """EmailMfaV2: email-based MFA management"""

    def get_mfa_status(self, user_type: str, user_id: int) -> dict:
        """GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status"""
        return self._http.get(f"/api/email_mfa_v2/status/{user_type}/{user_id}")

    def send_code(self, **kwargs) -> dict:
        """POST /api/email_mfa_v2/send - Send one-time code"""
        return self._http.post("/api/email_mfa_v2/send", kwargs)

    def verify_code(self, **kwargs) -> dict:
        """POST /api/email_mfa_v2/verify - Verify one-time code"""
        return self._http.post("/api/email_mfa_v2/verify", kwargs)

    def list_active_codes(self, user_type: str, user_id: int) -> dict:
        """GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes"""
        return self._http.get(f"/api/email_mfa_v2/list/{user_type}/{user_id}")

    def revoke_all_codes(self, **kwargs) -> dict:
        """POST /api/email_mfa_v2/revokeall - Revoke all active codes"""
        return self._http.post("/api/email_mfa_v2/revokeall", kwargs)

    def disable_mfa(self) -> dict:
        """POST /api/email_mfa_v2/disable - Disable MFA entirely"""
        return self._http.post("/api/email_mfa_v2/disable")
