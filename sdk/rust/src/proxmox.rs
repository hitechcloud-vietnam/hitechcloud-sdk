//! HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct ProxmoxResource {
    http: Arc<HttpClient>,
}

impl ProxmoxResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/htcpve/status - Get machine status
    pub async fn get_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpve/status", None).await
    }

    /// POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)
    pub async fn power_action(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/htcpve/power", None).await
    }

    /// GET /api/service/{id}/htcpve/vms - List machines
    pub async fn list_vms(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpve/vms", None).await
    }

    /// GET /api/service/{id}/htcpve/ips - List addresses
    pub async fn list_ips(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpve/ips", None).await
    }

    /// POST /api/service/{id}/htcpve/rdns - Set reverse DNS
    pub async fn set_rdns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/htcpve/rdns", None).await
    }

    /// GET /api/service/{id}/htcpve/backups - List backups
    pub async fn list_backups(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpve/backups", None).await
    }

    /// POST /api/service/{id}/htcpve/backups - Create backup
    pub async fn create_backup(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/htcpve/backups", None).await
    }

    /// GET /api/service/{id}/htcpve/snapshots - List snapshots
    pub async fn list_snapshots(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpve/snapshots", None).await
    }

    /// POST /api/service/{id}/htcpve/snapshots - Create snapshot
    pub async fn create_snapshot(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/htcpve/snapshots", None).await
    }

    /// GET /api/service/{id}/htcpve/usage - Get bandwidth usage
    pub async fn get_bandwidth_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/htcpve/usage", None).await
    }

}
