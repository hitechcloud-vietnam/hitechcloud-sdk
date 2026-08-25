//! Service Status: list and manage service statuses

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct ServiceStatusResource {
    http: Arc<HttpClient>,
}

impl ServiceStatusResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/statuses - Returns a list of all statuses
    pub async fn list(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/statuses", None).await
    }

    /// PUT /api/statuses/{id} - Returns details of status
    pub async fn get(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/statuses/{id}", None).await
    }

}
