//! Support: tickets, departments, news, knowledgebase

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct SupportResource {
    http: Arc<HttpClient>,
}

impl SupportResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/tickets - List support tickets
    pub async fn list_tickets(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/tickets", None).await
    }

    /// POST /api/tickets - Create new support ticket
    pub async fn create_ticket(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/tickets", None).await
    }

    /// GET /api/tickets/{number} - Get ticket details with replies
    pub async fn get_ticket(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/tickets/{number}", None).await
    }

    /// POST /api/tickets/{number} - Reply to ticket
    pub async fn reply(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/tickets/{number}", None).await
    }

    /// GET /api/ticket/attachment/{file} - Get ticket attachment
    pub async fn get_attachment(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/ticket/attachment/{file}", None).await
    }

    /// PUT /api/tickets/{number}/open - Re-open closed ticket
    pub async fn reopen(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/tickets/{number}/open", None).await
    }

    /// PUT /api/tickets/{number}/close - Close ticket
    pub async fn close(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.put("/api/tickets/{number}/close", None).await
    }

    /// GET /api/ticket/departments - List ticket departments
    pub async fn list_departments(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/ticket/departments", None).await
    }

    /// GET /api/news - List news
    pub async fn list_news(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/news", None).await
    }

    /// GET /api/news/{news_id} - Get news item details
    pub async fn get_news(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/news/{news_id}", None).await
    }

    /// GET /api/knowledgebase - List knowledgebase categories
    pub async fn list_knowledgebase_categories(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/knowledgebase", None).await
    }

    /// GET /api/knowledgebase/{category_id} - Get category with articles
    pub async fn get_knowledgebase_category(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/knowledgebase/{category_id}", None).await
    }

    /// GET /api/knowledgebase/article/{article_id} - Get article details
    pub async fn get_knowledgebase_article(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/knowledgebase/article/{article_id}", None).await
    }

}
