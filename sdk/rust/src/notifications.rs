//! Notifications: manage notification preferences

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct NotificationsResource {
    http: Arc<HttpClient>,
}

impl NotificationsResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/notifications - List all notifications
    pub async fn list(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/notifications", None).await
    }

    /// GET /api/notifications/new - Return only new portal notifications
    pub async fn list_new(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/notifications/new", None).await
    }

    /// PUT /api/notifications/{id}/ack - Mark notification as read
    pub async fn acknowledge(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/notifications/{id}/ack", None).await
    }

}
