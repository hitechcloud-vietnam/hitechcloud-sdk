//! Hosting Services: reinstall, status, bandwidth, reset

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct HostingResource {
    http: Arc<HttpClient>,
}

impl HostingResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/reinstall - Return installation options
    pub async fn get_reinstall_details(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/reinstall", None).await
    }

    /// POST /api/service/{id}/reinstall - Reinstall server
    pub async fn reinstall(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/reinstall", None).await
    }

    /// GET /api/service/{id}/status - Return server power status
    pub async fn get_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/status", None).await
    }

    /// GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs
    pub async fn get_bandwidth_graphs(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/bandwidth-graphs", None).await
    }

    /// GET /api/service/{id}/bandwidth - Return bandwidth usage and billing
    pub async fn get_bandwidth_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/bandwidth", None).await
    }

    /// POST /api/service/{id}/reset - Reset server
    pub async fn reset(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/reset", None).await
    }

}
