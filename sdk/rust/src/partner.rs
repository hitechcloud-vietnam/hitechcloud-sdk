//! Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct PartnerResource {
    http: Arc<HttpClient>,
}

impl PartnerResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/partner - Get partner info
    pub async fn get_partner_info(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner", None).await
    }

    /// POST /api/partner/apply - Apply to partner program
    pub async fn apply(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/partner/apply", None).await
    }

    /// GET /api/partner/tiers - List partner tiers
    pub async fn list_tiers(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/tiers", None).await
    }

    /// GET /api/partner/pricing - Get partner pricing
    pub async fn get_pricing(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/pricing", None).await
    }

    /// GET /api/partner/customers - List customers
    pub async fn list_customers(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/customers", None).await
    }

    /// GET /api/partner/earnings - Get earnings
    pub async fn get_earnings(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/earnings", None).await
    }

    /// GET /api/partner/wallet - Get wallet balance
    pub async fn get_wallet(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/wallet", None).await
    }

    /// GET /api/partner/payouts - List payouts
    pub async fn list_payouts(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/payouts", None).await
    }

    /// POST /api/partner/payouts - Request payout
    pub async fn request_payout(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/partner/payouts", None).await
    }

    /// GET /api/partner/leads - List leads
    pub async fn list_leads(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/leads", None).await
    }

    /// POST /api/partner/leads - Create lead
    pub async fn create_lead(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/partner/leads", None).await
    }

    /// GET /api/partner/referral - Get referral info
    pub async fn get_referral(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/referral", None).await
    }

    /// GET /api/partner/rates - Get exchange rates
    pub async fn get_rates(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/partner/rates", None).await
    }

}
