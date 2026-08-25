package vn.hitechcloud.sdk

/** Affiliate: affiliate program management */
class AffiliateResource(private val httpClient: HttpClient) {
    /** GET /api/affiliates/summary - Get Affiliate summary */
    fun getSummary(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates/summary", params)
    }

    /** GET /api/affiliates/campaigns - Get Affiliate campaigns */
    fun listCampaigns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates/campaigns", params)
    }

    /** GET /api/affiliates/commissions - Get Affiliate commissions */
    fun listCommissions(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates/commissions", params)
    }

    /** GET /api/affiliates/payouts - Get Affiliate payouts */
    fun listPayouts(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates/payouts", params)
    }

    /** GET /api/affiliates/vouchers - Get Affiliate vouchers */
    fun listVouchers(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates/vouchers", params)
    }

    /** GET /api/affiliates/commissionplans - Get Affiliate commission plans */
    fun listCommissionPlans(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/affiliates/commissionplans", params)
    }

}
