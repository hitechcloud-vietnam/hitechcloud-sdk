//! Virtualizor: VPS management via Virtualizor panel

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct VirtualizorResource {
    http: Arc<HttpClient>,
}

impl VirtualizorResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server
    pub async fn suspend(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/suspend", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server
    pub async fn unsuspend(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/unsuspend", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates
    pub async fn list_rebuild_templates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/rebuild", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key
    pub async fn change_ssh_key(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/addsshkey", None).await
    }

}
