//! Network Services: IP addresses and reverse DNS for services

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct NetworkServicesResource {
    http: Arc<HttpClient>,
}

impl NetworkServicesResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/ip - List Service IP Addresses
    pub async fn list_ips(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/ip", None).await
    }

    /// GET /api/service/{id}/rdns - Get reverse DNS entries
    pub async fn get_rdns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/rdns", None).await
    }

    /// POST /api/service/{id}/rdns - Update reverse DNS entries
    pub async fn update_rdns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/rdns", None).await
    }

}
