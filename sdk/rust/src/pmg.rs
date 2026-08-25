//! HiTechCloudPMG: mail filtering configuration and management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct PmgResource {
    http: Arc<HttpClient>,
}

impl PmgResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/htcpmg/config - Get mail filtering configuration
    pub async fn get_config(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpmg/config", None).await
    }

    /// POST /api/service/{id}/htcpmg/domains - Add a domain
    pub async fn add_domain(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/htcpmg/domains", None).await
    }

    /// POST /api/service/{id}/htcpmg/transport - Set target mail server
    pub async fn set_transport(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/htcpmg/transport", None).await
    }

    /// GET /api/service/{id}/htcpmg/stats - Get mail statistics
    pub async fn get_stats(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpmg/stats", None).await
    }

}
