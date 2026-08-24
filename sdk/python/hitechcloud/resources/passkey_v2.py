"""PasskeyV2 resource (6 endpoints)"""

from .base import BaseResource

class PasskeyV2Resource(BaseResource):
    """PasskeyV2: passkey-based MFA management"""

    def get_mfa_status(self, user_type: str, user_id: int) -> dict:
        """GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status"""
        return self._http.get(f"/api/passkeyv2/status/{user_type}/{user_id}")

    def list_credentials(self, user_type: str, user_id: int) -> dict:
        """GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials"""
        return self._http.get(f"/api/passkeyv2/credentials/{user_type}/{user_id}")

    def delete_credential(self, user_type: str, user_id: int, **kwargs) -> dict:
        """POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential"""
        return self._http.post(f"/api/passkeyv2/credentials/{user_type}/{user_id}/delete", kwargs)

    def send_email_otp(self, **kwargs) -> dict:
        """POST /api/passkeyv2/email_otp/send - Send email OTP"""
        return self._http.post("/api/passkeyv2/email_otp/send", kwargs)

    def verify_email_otp(self, **kwargs) -> dict:
        """POST /api/passkeyv2/email_otp/verify - Verify email OTP"""
        return self._http.post("/api/passkeyv2/email_otp/verify", kwargs)

    def disable_mfa(self, user_type: str, user_id: int) -> dict:
        """POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA"""
        return self._http.post(f"/api/passkeyv2/disable/{user_type}/{user_id}")
