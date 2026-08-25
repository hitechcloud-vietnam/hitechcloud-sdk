//! VNeIDEKYC: eKYC identity verification and organization verification

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct VNeIdeKycResource {
    http: Arc<HttpClient>,
}

impl VNeIdeKycResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/vneidekyc/ekyc/session - Start personal eKYC session
    pub async fn start_personal_ekyc(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/vneidekyc/ekyc/session", None).await
    }

    /// GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session
    pub async fn get_ekyc_session(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/vneidekyc/ekyc/session/{session_hash}", None).await
    }

    /// GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions
    pub async fn list_client_sessions(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/vneidekyc/ekyc/list/{client_id}", None).await
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file
    pub async fn upload_file(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/ekyc/{session_hash}/upload", None).await
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC
    pub async fn submit_ekyc(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/ekyc/{session_hash}/submit", None).await
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session
    pub async fn cancel_session(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/ekyc/{session_hash}/cancel", None).await
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC
    pub async fn accept_ekyc(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/ekyc/{session_hash}/accept", None).await
    }

    /// POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC
    pub async fn reject_ekyc(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/ekyc/{session_hash}/reject", None).await
    }

    /// POST /api/vneidekyc/org/lookup - Organization tax code lookup
    pub async fn lookup_organization(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/org/lookup", None).await
    }

    /// POST /api/vneidekyc/org/start - Start organization verification
    pub async fn start_org_verification(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/org/start", None).await
    }

    /// GET /api/vneidekyc/org/{org_hash} - Get organization record
    pub async fn get_organization(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/vneidekyc/org/{org_hash}", None).await
    }

    /// POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization
    pub async fn accept_organization(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/org/{org_hash}/accept", None).await
    }

    /// POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization
    pub async fn reject_organization(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/org/{org_hash}/reject", None).await
    }

    /// POST /api/vneidekyc/pdf/upload - Upload signed PDF
    pub async fn upload_signed_pdf(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/vneidekyc/pdf/upload", None).await
    }

    /// GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record
    pub async fn get_signed_pdf(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/vneidekyc/pdf/{pdf_hash}", None).await
    }

    /// GET /api/vneidekyc/client/{client_id}/status - Client verification status
    pub async fn get_client_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/vneidekyc/client/{client_id}/status", None).await
    }

}
