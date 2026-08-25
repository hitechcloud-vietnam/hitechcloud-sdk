//! DNS Manage: domain DNS records, DNSSEC, nameserver registration

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct DnsManageResource {
    http: Arc<HttpClient>,
}

impl DnsManageResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/domain/{id}/dns - List DNS records
    pub async fn get_records(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/dns", None).await
    }

    /// POST /api/domain/{id}/dns - Create DNS record
    pub async fn create_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/domain/{id}/dns", None).await
    }

    /// PUT /api/domain/{id}/dns/{index} - Update DNS record
    pub async fn update_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/domain/{id}/dns/{index}", None).await
    }

    /// DELETE /api/domain/{id}/dns/{index} - Remove DNS record
    pub async fn delete_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/domain/{id}/dns/{index}", None).await
    }

    /// GET /api/domain/{id}/dns/types - List supported record types
    pub async fn get_record_types(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/dns/types", None).await
    }

    /// GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags
    pub async fn get_dnssec_flags(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/dnssec/flags", None).await
    }

    /// GET /api/domain/{id}/dnssec - Get DNSSEC records
    pub async fn get_dnssec_records(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/dnssec", None).await
    }

    /// POST /api/domain/{id}/dnssec - Create DNSSEC record
    pub async fn create_dnssec_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/domain/{id}/dnssec", None).await
    }

    /// DELETE /api/domain/{id}/dnssec - Remove DNSSEC record
    pub async fn delete_dnssec_record(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/domain/{id}/dnssec", None).await
    }

    /// POST /api/domain/{id}/reg - Register domain nameserver
    pub async fn register_nameserver(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/domain/{id}/reg", None).await
    }

}
