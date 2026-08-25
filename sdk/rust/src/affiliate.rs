//! Affiliate: affiliate program management

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct AffiliateResource {
    http: Arc<HttpClient>,
}

impl AffiliateResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/affiliates/summary - Get Affiliate summary
    pub async fn get_summary(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates/summary", None).await
    }

    /// GET /api/affiliates/campaigns - Get Affiliate campaigns
    pub async fn list_campaigns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates/campaigns", None).await
    }

    /// GET /api/affiliates/commissions - Get Affiliate commissions
    pub async fn list_commissions(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates/commissions", None).await
    }

    /// GET /api/affiliates/payouts - Get Affiliate payouts
    pub async fn list_payouts(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates/payouts", None).await
    }

    /// GET /api/affiliates/vouchers - Get Affiliate vouchers
    pub async fn list_vouchers(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates/vouchers", None).await
    }

    /// GET /api/affiliates/commissionplans - Get Affiliate commission plans
    pub async fn list_commission_plans(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates/commissionplans", None).await
    }

}
