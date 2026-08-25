//! HiTechCloudIPAM: IP addresses, subnets, reverse DNS

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct IpamResource {
    http: Arc<HttpClient>,
}

impl IpamResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/htcipam/ips - List IP addresses
    pub async fn list_ips(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcipam/ips", None).await
    }

    /// GET /api/service/{id}/htcipam/subnets - List subnets
    pub async fn list_subnets(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcipam/subnets", None).await
    }

    /// GET /api/service/{id}/htcipam/rdns - List reverse DNS records
    pub async fn list_rdns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcipam/rdns", None).await
    }

    /// POST /api/service/{id}/htcipam/rdns - Set reverse DNS
    pub async fn set_rdns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/htcipam/rdns", None).await
    }

}
