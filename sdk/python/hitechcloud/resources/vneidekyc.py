"""VNeIDEKYC resource (16 endpoints)"""

from .base import BaseResource

class VNeIdeKycResource(BaseResource):
    """VNeIDEKYC: eKYC identity verification and organization verification"""

    # --- Personal eKYC ---
    def start_personal_ekyc(self, **kwargs) -> dict:
        """GET /api/vneidekyc/ekyc/session - Start personal eKYC session"""
        return self._http.get("/api/vneidekyc/ekyc/session", kwargs)

    def get_ekyc_session(self, session_hash: str) -> dict:
        """GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session"""
        return self._http.get(f"/api/vneidekyc/ekyc/session/{session_hash}")

    def list_client_sessions(self, client_id: int) -> dict:
        """GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions"""
        return self._http.get(f"/api/vneidekyc/ekyc/list/{client_id}")

    def upload_file(self, session_hash: str, **kwargs) -> dict:
        """POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file"""
        return self._http.post(f"/api/vneidekyc/ekyc/{session_hash}/upload", kwargs)

    def submit_ekyc(self, session_hash: str, **kwargs) -> dict:
        """POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC"""
        return self._http.post(f"/api/vneidekyc/ekyc/{session_hash}/submit", kwargs)

    def cancel_session(self, session_hash: str) -> dict:
        """POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session"""
        return self._http.post(f"/api/vneidekyc/ekyc/{session_hash}/cancel")

    def accept_ekyc(self, session_hash: str) -> dict:
        """POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC"""
        return self._http.post(f"/api/vneidekyc/ekyc/{session_hash}/accept")

    def reject_ekyc(self, session_hash: str, rejection_reason: str) -> dict:
        """POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC"""
        return self._http.post(f"/api/vneidekyc/ekyc/{session_hash}/reject", {"rejection_reason": rejection_reason})

    # --- Organization Verification ---
    def lookup_organization(self, tax_code: str) -> dict:
        """POST /api/vneidekyc/org/lookup - Organization tax code lookup"""
        return self._http.post("/api/vneidekyc/org/lookup", {"tax_code": tax_code})

    def start_org_verification(self, **kwargs) -> dict:
        """POST /api/vneidekyc/org/start - Start organization verification"""
        return self._http.post("/api/vneidekyc/org/start", kwargs)

    def get_organization(self, org_hash: str) -> dict:
        """GET /api/vneidekyc/org/{org_hash} - Get organization record"""
        return self._http.get(f"/api/vneidekyc/org/{org_hash}")

    def accept_organization(self, org_hash: str) -> dict:
        """POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization"""
        return self._http.post(f"/api/vneidekyc/org/{org_hash}/accept")

    def reject_organization(self, org_hash: str, rejection_reason: str) -> dict:
        """POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization"""
        return self._http.post(f"/api/vneidekyc/org/{org_hash}/reject", {"rejection_reason": rejection_reason})

    # --- PDF ---
    def upload_signed_pdf(self, **kwargs) -> dict:
        """POST /api/vneidekyc/pdf/upload - Upload signed PDF"""
        return self._http.post("/api/vneidekyc/pdf/upload", kwargs)

    def get_signed_pdf(self, pdf_hash: str) -> dict:
        """GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record"""
        return self._http.get(f"/api/vneidekyc/pdf/{pdf_hash}")

    # --- Client Status ---
    def get_client_status(self, client_id: int) -> dict:
        """GET /api/vneidekyc/client/{client_id}/status - Client verification status"""
        return self._http.get(f"/api/vneidekyc/client/{client_id}/status")
