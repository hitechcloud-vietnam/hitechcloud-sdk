//! PasskeyV2: passkey-based MFA management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct PasskeyV2Resource {
    http: Arc<HttpClient>,
}

impl PasskeyV2Resource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status
    pub async fn get_mfa_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/passkeyv2/status/{user_type}/{user_id}", None).await
    }

    /// GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials
    pub async fn list_credentials(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/passkeyv2/credentials/{user_type}/{user_id}", None).await
    }

    /// POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential
    pub async fn delete_credential(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/passkeyv2/credentials/{user_type}/{user_id}/delete", None).await
    }

    /// POST /api/passkeyv2/email_otp/send - Send email OTP
    pub async fn send_email_otp(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/passkeyv2/email_otp/send", None).await
    }

    /// POST /api/passkeyv2/email_otp/verify - Verify email OTP
    pub async fn verify_email_otp(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/passkeyv2/email_otp/verify", None).await
    }

    /// POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA
    pub async fn disable_mfa(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/passkeyv2/disable/{user_type}/{user_id}", None).await
    }

}
