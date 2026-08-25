//! Cloud Instance: full VM lifecycle management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct CloudInstanceResource {
    http: Arc<HttpClient>,
}

impl CloudInstanceResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/vms - List virtual servers
    pub async fn list_vms(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms", None).await
    }

    /// POST /api/service/{id}/vms - Create new virtual server
    pub async fn create_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms", None).await
    }

    /// GET /api/service/{id}/vms/{vmid} - Get VM details
    pub async fn get_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}", None).await
    }

    /// DELETE /api/service/{id}/vms/{vmid} - Remove virtual server
    pub async fn destroy_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{id}/vms/{vmid}", None).await
    }

    /// PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server
    pub async fn resize_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{id}/vms/{vmid}", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server
    pub async fn stop_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/stop", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/start - Start virtual server
    pub async fn start_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/start", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server
    pub async fn reboot_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/reboot", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password
    pub async fn reset_password(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/resetpwd", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server
    pub async fn rebuild_vm(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/rebuild", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM
    pub async fn list_vm_ips(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/ips", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM
    pub async fn assign_ip(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/ips", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces
    pub async fn list_interfaces(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/interfaces", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph
    pub async fn get_cpu_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/usage/cpu", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph
    pub async fn get_network_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/usage/net", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph
    pub async fn get_disk_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/usage/disk", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM
    pub async fn list_disks(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/storage", None).await
    }

    /// PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk
    pub async fn resize_disk(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{id}/vms/{vmid}/storage/{diskid}", None).await
    }

    /// GET /api/service/{id}/images - List ISO images
    pub async fn list_iso_images(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/images", None).await
    }

    /// POST /api/service/{id}/images - Add ISO image
    pub async fn add_iso_image(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/images", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs
    pub async fn list_available_ips(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips", None).await
    }

    /// DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM
    pub async fn remove_ip(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{id}/vms/{vmid}/ips/{ipid}", None).await
    }

    /// GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries
    pub async fn get_rdns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vms/{vmid}/rdns", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries
    pub async fn update_rdns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/rdns", None).await
    }

    /// POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network
    pub async fn rebuild_network(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/vms/{vmid}/rebuild_network", None).await
    }

}
