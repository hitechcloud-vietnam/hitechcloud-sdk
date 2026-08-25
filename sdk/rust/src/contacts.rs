//! Contacts: manage account contacts

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct ContactsResource {
    http: Arc<HttpClient>,
}

impl ContactsResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/contact - Return a list of contacts on this account
    pub async fn list(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/contact", None).await
    }

    /// POST /api/contact - Create new contact account
    pub async fn create(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/contact", None).await
    }

    /// GET /api/contact/privileges - List possible contact privileges
    pub async fn get_privileges(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/contact/privileges", None).await
    }

    /// GET /api/contact/{id} - Get contact details
    pub async fn get(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/contact/{id}", None).await
    }

    /// PUT /api/contact/{id} - Update contact details
    pub async fn update(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/contact/{id}", None).await
    }

}
