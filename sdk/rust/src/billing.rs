//! Billing & Contracts: balance, invoices, payment methods

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct BillingResource {
    http: Arc<HttpClient>,
}

impl BillingResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/balance - Get account balance and credit
    pub async fn get_balance(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/balance", None).await
    }

    /// GET /api/invoice - List all invoices
    pub async fn list_invoices(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/invoice", None).await
    }

    /// GET /api/invoice/{id} - Get invoice details
    pub async fn get_invoice(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/invoice/{id}", None).await
    }

    /// POST /api/invoice/{id}/credit - Apply account credit to invoice
    pub async fn apply_credit(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/invoice/{id}/credit", None).await
    }

    /// GET /api/payment - List available payment methods
    pub async fn get_payment_methods(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/payment", None).await
    }

    /// GET /api/payment/fees - List payment methods with fees
    pub async fn get_payment_fees(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/payment/fees", None).await
    }

}
