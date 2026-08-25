//! Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct CloudServiceResource {
    http: Arc<HttpClient>,
}

impl CloudServiceResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown
    pub async fn shutdown_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/shutdown", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power
    pub async fn reset_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/reset", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname
    pub async fn change_hostname(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/hostname", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/ippool - List IP pools
    pub async fn list_ip_pools(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/ippool", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP
    pub async fn allocate_ip(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/ippool/{pool}", None).await
    }

    /// GET /api/service/{id}/networks - List available networks
    pub async fn list_networks(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/networks", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface
    pub async fn add_interface(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/interfaces", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details
    pub async fn get_interface(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/interfaces/{iface}", None).await
    }

    /// PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface
    pub async fn update_interface(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{id}/vms/{vmid}/interfaces/{iface}", None).await
    }

    /// DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface
    pub async fn remove_interface(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{id}/vms/{vmid}/interfaces/{iface}", None).await
    }

}
