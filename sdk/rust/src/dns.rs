//! DNS: zones and records management for services

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct DnsResource {
    http: Arc<HttpClient>,
}

impl DnsResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/dns - List all DNS zones
    pub async fn list(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/dns", None).await
    }

    /// GET /api/service/{service_id}/dns - List DNS zones for service
    pub async fn list_for_service(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{service_id}/dns", None).await
    }

    /// POST /api/service/{service_id}/dns - Create DNS zone
    pub async fn add_zone(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{service_id}/dns", None).await
    }

    /// GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details
    pub async fn get_zone(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{service_id}/dns/{zone_id}", None).await
    }

    /// DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone
    pub async fn delete_zone(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{service_id}/dns/{zone_id}", None).await
    }

    /// POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record
    pub async fn add_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{service_id}/dns/{zone_id}/records", None).await
    }

    /// PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record
    pub async fn edit_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", None).await
    }

    /// DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record
    pub async fn delete_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", None).await
    }

}
