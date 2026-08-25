//! vCloudStack Public Cloud: rescue, unrescue, console, usage

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct VCloudStackResource {
    http: Arc<HttpClient>,
}

impl VCloudStackResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode
    pub async fn rescue_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/rescue", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode
    pub async fn unrescue_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/unrescue", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/console - Get VM console
    pub async fn get_console(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/console", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details
    pub async fn get_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/usage", None).await
    }

}
