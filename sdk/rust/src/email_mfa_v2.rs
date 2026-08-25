//! EmailMfaV2: email-based MFA management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct EmailMfaV2Resource {
    http: Arc<HttpClient>,
}

impl EmailMfaV2Resource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status
    pub async fn get_mfa_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/email_mfa_v2/status/{user_type}/{user_id}", None).await
    }

    /// POST /api/email_mfa_v2/send - Send one-time code
    pub async fn send_code(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/email_mfa_v2/send", None).await
    }

    /// POST /api/email_mfa_v2/verify - Verify one-time code
    pub async fn verify_code(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/email_mfa_v2/verify", None).await
    }

    /// GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes
    pub async fn list_active_codes(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/email_mfa_v2/list/{user_type}/{user_id}", None).await
    }

    /// POST /api/email_mfa_v2/revokeall - Revoke all active codes
    pub async fn revoke_all_codes(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/email_mfa_v2/revokeall", None).await
    }

    /// POST /api/email_mfa_v2/disable - Disable MFA entirely
    pub async fn disable_mfa(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/email_mfa_v2/disable", None).await
    }

}
