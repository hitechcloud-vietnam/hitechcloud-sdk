//! Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct ProxmoxBackupResource {
    http: Arc<HttpClient>,
}

impl ProxmoxBackupResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/pbs - Get backup connection info
    pub async fn get_connection_info(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pbs", None).await
    }

    /// GET /api/service/{id}/pbs/credentials - Get backup credentials
    pub async fn get_credentials(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pbs/credentials", None).await
    }

    /// GET /api/service/{id}/pbs/usage - Get backup usage
    pub async fn get_usage(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pbs/usage", None).await
    }

    /// GET /api/service/{id}/pbs/metrics - Get backup metrics
    pub async fn get_metrics(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pbs/metrics", None).await
    }

    /// GET /api/service/{id}/pbs/snapshots - List snapshots
    pub async fn list_snapshots(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pbs/snapshots", None).await
    }

    /// GET /api/service/{id}/pbs/groups - List backup groups
    pub async fn list_groups(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pbs/groups", None).await
    }

    /// POST /api/service/{id}/pbs/password - Change backup password
    pub async fn change_password(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/pbs/password", None).await
    }

    /// POST /api/service/{id}/pbs/token - Rotate API token
    pub async fn rotate_token(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/pbs/token", None).await
    }

    /// DELETE /api/service/{id}/pbs/token - Revoke API token
    pub async fn revoke_token(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/service/{id}/pbs/token", None).await
    }

}
