//! Account Authentication: login, logout, token refresh, signup, password reset

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct AuthResource {
    http: Arc<HttpClient>,
}

impl AuthResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// POST /api/login - Authenticate and obtain access token
    pub async fn login(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/login", None).await
    }

    /// POST /api/logout - Invalidate current access token
    pub async fn logout(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/logout", None).await
    }

    /// POST /api/token - Generate new token using refresh token
    pub async fn refresh_token(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/token", None).await
    }

    /// POST /api/revoke - Invalidate authorization and refresh token
    pub async fn revoke_token(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/revoke", None).await
    }

    /// POST /api/passwordreset - Request password reset email
    pub async fn password_reset(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/passwordreset", None).await
    }

    /// POST /api/signup - Create new account
    pub async fn signup(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/signup", None).await
    }

}
