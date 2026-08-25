//! URL Shortener: shorten URLs, manage links, stats

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct UrlShortenerResource {
    http: Arc<HttpClient>,
}

impl UrlShortenerResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// POST /api/url-shortener/shorten - Shorten a URL
    pub async fn shorten(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/url-shortener/shorten", None).await
    }

    /// GET /api/url-shortener/links - List links
    pub async fn list_links(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/url-shortener/links", None).await
    }

    /// GET /api/url-shortener/config - Get shortener config
    pub async fn get_config(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/url-shortener/config", None).await
    }

    /// GET /api/url-shortener/stats - Get link stats
    pub async fn get_stats(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/url-shortener/stats", None).await
    }

    /// GET /api/url-shortener/links/{id} - Get link details
    pub async fn get_link(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/url-shortener/links/{id}", None).await
    }

    /// DELETE /api/url-shortener/links/{id} - Delete link
    pub async fn delete_link(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/url-shortener/links/{id}", None).await
    }

}
