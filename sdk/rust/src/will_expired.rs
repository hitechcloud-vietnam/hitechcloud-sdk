//! WillExpired: expiring services and domains management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct WillExpiredResource {
    http: Arc<HttpClient>,
}

impl WillExpiredResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/willexpired - List expiring services and domains
    pub async fn list_expiring(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired", None).await
    }

    /// GET /api/willexpired/summary - Expiring summary
    pub async fn get_summary(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired/summary", None).await
    }

    /// GET /api/willexpired/config - Module configuration
    pub async fn get_config(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired/config", None).await
    }

    /// GET /api/willexpired/invoices - Open renewal invoices
    pub async fn list_open_invoices(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired/invoices", None).await
    }

    /// GET /api/willexpired/requests - Renewal request log
    pub async fn list_requests(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired/requests", None).await
    }

    /// GET /api/willexpired/export - Export all expiring items
    pub async fn export_all(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired/export", None).await
    }

    /// GET /api/willexpired/{type}/{id} - Get item detail
    pub async fn get_item(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired/{type}/{id}", None).await
    }

    /// POST /api/willexpired/{type}/{id}/renew - Renew item
    pub async fn renew(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/willexpired/{type}/{id}/renew", None).await
    }

    /// GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status
    pub async fn get_autorenew(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/willexpired/{type}/{id}/autorenew", None).await
    }

    /// PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew
    pub async fn set_autorenew(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/willexpired/{type}/{id}/autorenew", None).await
    }

}
