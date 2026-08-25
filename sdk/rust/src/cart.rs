//! Cart: shopping cart management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct CartResource {
    http: Arc<HttpClient>,
}

impl CartResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/category - Return a list of product categories
    pub async fn list_categories(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/category", None).await
    }

    /// GET /api/category/{category_id}/product - List products in category
    pub async fn list_products(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/category/{category_id}/product", None).await
    }

    /// GET /api/order/{product_id} - Get product configuration details
    pub async fn get_product_config(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/order/{product_id}", None).await
    }

    /// POST /api/order/{product_id} - Order new service
    pub async fn order_product(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/order/{product_id}", None).await
    }

    /// POST /api/order - Order multiple services
    pub async fn order_multiple(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/order", None).await
    }

    /// POST /api/quote - Calculate order cost and recurring prices
    pub async fn get_quote(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/quote", None).await
    }

}
