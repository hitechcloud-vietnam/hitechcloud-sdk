//! Cloud GPU: GPU instance management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct CloudGpuResource {
    http: Arc<HttpClient>,
}

impl CloudGpuResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// PUT /api/service/{id}/vms/reboot - Reboot virtual server
    pub async fn reboot(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{id}/vms/reboot", None).await
    }

    /// PUT /api/service/{id}/vms/stop - Stop virtual server
    pub async fn stop(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{id}/vms/stop", None).await
    }

    /// PUT /api/service/{id}/vms/start - Start virtual server
    pub async fn start(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{id}/vms/start", None).await
    }

    /// GET /api/service/{id}/vms/firewall - Get firewall rules
    pub async fn get_firewall_rules(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/firewall", None).await
    }

    /// POST /api/service/{id}/vms/firewall - Add firewall rules
    pub async fn add_firewall_rules(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/firewall", None).await
    }

    /// DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule
    pub async fn remove_firewall_rule(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{id}/vms/firewall/{position}", None).await
    }

}
