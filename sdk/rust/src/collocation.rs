//! Collocation Services: PDU port management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct CollocationResource {
    http: Arc<HttpClient>,
}

impl CollocationResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/service/{id}/pdu - List PDU ports assigned to service
    pub async fn list_pdu_ports(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pdu", None).await
    }

    /// GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state
    pub async fn get_pdu_port_state(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/service/{id}/pdu/{port}", None).await
    }

    /// POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state
    pub async fn set_pdu_port_status(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/service/{id}/pdu/{port}", None).await
    }

}
