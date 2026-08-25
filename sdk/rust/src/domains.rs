//! Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct DomainsResource {
    http: Arc<HttpClient>,
}

impl DomainsResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/domain - List domains under your account
    pub async fn list(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain", None).await
    }

    /// GET /api/domain/{id} - Get domain details
    pub async fn get(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}", None).await
    }

    /// GET /api/domain/name/{name} - Get domain details by name
    pub async fn get_by_name(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/name/{name}", None).await
    }

    /// GET /api/whois/{domain} - WHOIS lookup
    pub async fn whois(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/whois/{domain}", None).await
    }

    /// GET /api/whoislookup/{domain} - Perform WHOIS lookup
    pub async fn whois_lookup(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/whoislookup/{domain}", None).await
    }

    /// GET /api/domain/availability/{domain} - Check domain availability
    pub async fn check_availability(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/availability/{domain}", None).await
    }

    /// GET /api/domain/{id}/ns - Get domain nameservers
    pub async fn get_nameservers(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/ns", None).await
    }

    /// PUT /api/domain/{id}/ns - Update domain nameservers
    pub async fn update_nameservers(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/domain/{id}/ns", None).await
    }

    /// GET /api/domain/{id}/epp - Get domain EPP code
    pub async fn get_epp_code(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/epp", None).await
    }

    /// GET /api/domain/{id}/sync - Synchronize domain
    pub async fn sync(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/sync", None).await
    }

    /// GET /api/domain/{id}/reglock - Get domain lock status
    pub async fn get_lock(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/reglock", None).await
    }

    /// PUT /api/domain/{id}/reglock - Update domain lock
    pub async fn update_lock(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/domain/{id}/reglock", None).await
    }

    /// PUT /api/domain/{id}/idprotection - Update ID protection
    pub async fn update_id_protection(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/domain/{id}/idprotection", None).await
    }

    /// GET /api/domain/{id}/contact - Get domain contact info
    pub async fn get_contact(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/contact", None).await
    }

    /// PUT /api/domain/{id}/contact - Update domain contact info
    pub async fn update_contact(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/domain/{id}/contact", None).await
    }

    /// GET /api/domain/{id}/email/forwarding - Get email forwarding
    pub async fn get_email_forwarding(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/email/forwarding", None).await
    }

    /// PUT /api/domain/{id}/email/forwarding - Update email forwarding
    pub async fn update_email_forwarding(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/domain/{id}/email/forwarding", None).await
    }

    /// GET /api/domain/order - List available TLDs
    pub async fn get_available_tlds(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/order", None).await
    }

    /// POST /api/domain/order - Order new domain
    pub async fn order(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/domain/order", None).await
    }

    /// POST /api/domain/{id}/renew - Renew domain
    pub async fn renew(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/domain/{id}/renew", None).await
    }

    /// GET /api/domain/order/{id}/form - Get additional data for TLD
    pub async fn get_tld_form(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/order/{id}/form", None).await
    }

    /// GET /api/domain/{id}/documents - Get domain documents
    pub async fn get_documents(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/domain/{id}/documents", None).await
    }

}
