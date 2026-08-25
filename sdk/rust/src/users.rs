//! User Profile: view/update account details, logs

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct UsersResource {
    http: Arc<HttpClient>,
}

impl UsersResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/details - Return registration details for my account
    pub async fn get_details(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/details", None).await
    }

    /// PUT /api/details - Update registration details
    pub async fn update_details(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/details", None).await
    }

    /// GET /api/logs - Returns logs from history
    pub async fn get_logs(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/logs", None).await
    }

}
