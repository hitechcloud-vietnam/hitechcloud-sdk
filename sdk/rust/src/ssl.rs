//! SSL Certificates: list, order, download certificates

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct SSLResource {
    http: Arc<HttpClient>,
}

impl SSLResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/certificate - List all SSL certificates
    pub async fn list(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/certificate", None).await
    }

    /// GET /api/certificate/{id} - Return certificate details
    pub async fn get(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/certificate/{id}", None).await
    }

    /// GET /api/certificate/{id}/crt - Download X.509 certificate
    pub async fn download(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/certificate/{id}/crt", None).await
    }

    /// GET /api/certificate/order - List available certificates for purchase
    pub async fn list_available(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/certificate/order", None).await
    }

    /// POST /api/certificate/order - Order new certificate
    pub async fn order(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/certificate/order", None).await
    }

    /// GET /api/certificate/order/{product_id}/software - List server software
    pub async fn list_server_software(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/certificate/order/{product_id}/software", None).await
    }

}
