//! Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct BareMetalResource {
    http: Arc<HttpClient>,
}

impl BareMetalResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/reinstall/templates - List OS templates and recipes
    pub async fn list_reinstall_templates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/reinstall/templates", None).await
    }

    /// POST /api/service/{id}/diag/cancel - Cancel diagnostics operation
    pub async fn cancel_diagnostics(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/diag/cancel", None).await
    }

    /// GET /api/service/{id}/diag/templates - List diagnostics templates
    pub async fn list_diagnostics_templates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/diag/templates", None).await
    }

    /// GET /api/service/{id}/diag - Show diagnostic operation status
    pub async fn get_diagnostics_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/diag", None).await
    }

    /// POST /api/service/{id}/diag - Start new diagnostic operation
    pub async fn run_diagnostics(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/diag", None).await
    }

    /// GET /api/service/{id}/rescue/templates - List rescue templates
    pub async fn list_rescue_templates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/rescue/templates", None).await
    }

    /// GET /api/service/{id}/rescue - Show rescue operation status
    pub async fn get_rescue_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/rescue", None).await
    }

    /// POST /api/service/{id}/rescue - Start rescue operation
    pub async fn rescue(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/rescue", None).await
    }

    /// POST /api/service/{id}/rescue/cancel - Cancel rescue operation
    pub async fn cancel_rescue(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/rescue/cancel", None).await
    }

    /// GET /api/service/{id}/info - Get server hardware and OS details
    pub async fn get_server_info(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/info", None).await
    }

    /// POST /api/service/{id}/hostname - Update server hostname
    pub async fn update_hostname(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/hostname", None).await
    }

    /// GET /api/service/{id}/ips - List server IPs
    pub async fn list_ips(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/ips", None).await
    }

    /// POST /api/service/{id}/ips - Add new IP to server
    pub async fn add_ip(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/ips", None).await
    }

    /// GET /api/service/{id}/vlans - List available VLANs
    pub async fn list_vlans(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/vlans", None).await
    }

    /// GET /api/service/{id}/ips/{ip} - Get IP details
    pub async fn get_ip_details(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/ips/{ip}", None).await
    }

    /// PUT /api/service/{id}/ips/{ip} - Edit IP
    pub async fn edit_ip(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/service/{id}/ips/{ip}", None).await
    }

    /// GET /api/service/{id}/reinstall - Return installation options
    pub async fn get_reinstall_details(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/reinstall", None).await
    }

    /// POST /api/service/{id}/reinstall - Reinstall server
    pub async fn reinstall(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/reinstall", None).await
    }

    /// GET /api/service/{id}/status - Return server power status
    pub async fn get_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/status", None).await
    }

    /// POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)
    pub async fn power_action(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/power/{action}", None).await
    }

    /// GET /api/serverstock - List servers in stock
    pub async fn list_servers_in_stock(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/serverstock", None).await
    }

}
