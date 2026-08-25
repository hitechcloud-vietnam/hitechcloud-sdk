//! AffiliatesAdvanced: advanced affiliate management with client_id

use std::sync::Arc;
use crate::http_client::HttpClient;

pub struct AffiliatesAdvancedResource {
    http: Arc<HttpClient>,
}

impl AffiliatesAdvancedResource {
    pub fn new(http: Arc<HttpClient>) -> Self { Self { http } }

    /// GET /api/affiliates_adv/{client_id}/info - Get affiliate account info
    pub async fn get_info(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/info", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats
    pub async fn get_stats(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/stats", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans
    pub async fn get_commission_plans(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/commission-plans", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers
    pub async fn get_vouchers(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/vouchers", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/commissions - Get commissions
    pub async fn get_commissions(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/commissions", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/referrals - Get referred clients
    pub async fn get_referrals(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/referrals", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/payouts - Get payout history
    pub async fn get_payouts(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/payouts", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns
    pub async fn get_campaigns(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/campaigns", None).await
    }

    /// GET /api/affiliates_adv/{client_id}/audit - Get activity log
    pub async fn get_audit_log(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.get("/api/affiliates_adv/{client_id}/audit", None).await
    }

    /// POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account
    pub async fn activate(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/affiliates_adv/{client_id}/activate", None).await
    }

    /// POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan
    pub async fn set_commission_plan(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/affiliates_adv/{client_id}/commission-plan/{commission_id}", None).await
    }

    /// POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher
    pub async fn create_voucher(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/affiliates_adv/{client_id}/vouchers/{plan_id}", None).await
    }

    /// DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher
    pub async fn delete_voucher(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.delete("/api/affiliates_adv/{client_id}/vouchers/{voucher_id}", None).await
    }

    /// POST /api/affiliates_adv/{client_id}/landing-page - Set landing page
    pub async fn set_landing_page(&self, params: Option<&serde_json::Value>) -> Result<serde_json::Value, crate::http_client::ApiError> {
        self.http.post("/api/affiliates_adv/{client_id}/landing-page", None).await
    }

}
