//! Services: list, details, cancel, renew, billing cycle

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct ServicesResource {
    http: Arc<HttpClient>,
}

impl ServicesResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service - List all services
    pub async fn list(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service", None).await
    }

    /// GET /api/service/{id} - Return service details
    pub async fn get(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}", None).await
    }

    /// GET /api/service/{id}/methods - List methods available for service
    pub async fn list_methods(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/methods", None).await
    }

    /// POST /api/service/{id}/cancel - Request service cancellation
    pub async fn cancel(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/cancel", None).await
    }

    /// GET /api/service/{id}/label - Show current service label
    pub async fn get_label(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/label", None).await
    }

    /// POST /api/service/{id}/label - Set new custom label
    pub async fn set_label(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/label", None).await
    }

    /// POST /api/service/{id}/renew - Generate renewal invoice
    pub async fn renew(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/renew", None).await
    }

    /// GET /api/service/{id}/cycle - Get billing cycle options
    pub async fn list_billing_cycles(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/cycle", None).await
    }

    /// POST /api/service/{id}/cycle - Change billing cycle
    pub async fn change_billing_cycle(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/cycle", None).await
    }

}
