//! Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct CloudVmResource {
    http: Arc<HttpClient>,
}

impl CloudVmResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/upgrade - List resource upgrade options
    pub async fn get_upgrade_options(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/upgrade", None).await
    }

    /// POST /api/service/{id}/upgrade - Estimate or request upgrade
    pub async fn request_upgrade(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/upgrade", None).await
    }

    /// GET /api/service/{id}/resources - Show available and used resources
    pub async fn get_resources(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/resources", None).await
    }

    /// GET /api/service/{id}/templates/{vmid} - List rebuild templates
    pub async fn list_rebuild_templates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/templates/{vmid}", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph
    pub async fn get_memory_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/usage/memory", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM
    pub async fn list_iso_images(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/images", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image
    pub async fn mount_iso(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/images", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/boot - Change boot order
    pub async fn set_boot_order(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/boot", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE
    pub async fn enable_pxe(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/tuntap", None).await
    }

}
