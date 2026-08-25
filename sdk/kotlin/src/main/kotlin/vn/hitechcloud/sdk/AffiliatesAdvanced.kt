package vn.hitechcloud.sdk

/** AffiliatesAdvanced: advanced affiliate management with client_id */
class AffiliatesAdvancedResource(private val httpClient: HttpClient) {
    /** GET /api/affiliates_adv/{client_id}/info - Get affiliate account info */
    fun getInfo(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/info", params)
    }

    /** GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats */
    fun getStats(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/stats", params)
    }

    /** GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans */
    fun getCommissionPlans(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/commission-plans", params)
    }

    /** GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers */
    fun getVouchers(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/vouchers", params)
    }

    /** GET /api/affiliates_adv/{client_id}/commissions - Get commissions */
    fun getCommissions(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/commissions", params)
    }

    /** GET /api/affiliates_adv/{client_id}/referrals - Get referred clients */
    fun getReferrals(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/referrals", params)
    }

    /** GET /api/affiliates_adv/{client_id}/payouts - Get payout history */
    fun getPayouts(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/payouts", params)
    }

    /** GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns */
    fun getCampaigns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/campaigns", params)
    }

    /** GET /api/affiliates_adv/{client_id}/audit - Get activity log */
    fun getAuditLog(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates_adv/{client_id}/audit", params)
    }

    /** POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account */
    fun activate(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/affiliates_adv/{client_id}/activate", params)
    }

    /** POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan */
    fun setCommissionPlan(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/affiliates_adv/{client_id}/commission-plan/{commission_id}", params)
    }

    /** POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher */
    fun createVoucher(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/affiliates_adv/{client_id}/vouchers/{plan_id}", params)
    }

    /** DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher */
    fun deleteVoucher(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/affiliates_adv/{client_id}/vouchers/{voucher_id}", params)
    }

    /** POST /api/affiliates_adv/{client_id}/landing-page - Set landing page */
    fun setLandingPage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/affiliates_adv/{client_id}/landing-page", params)
    }

}
