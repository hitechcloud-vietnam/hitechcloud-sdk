package vn.hitechcloud.sdk

/** Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates */
class PartnerResource(private val httpClient: HttpClient) {
    /** GET /api/partner - Get partner info */
    fun getPartnerInfo(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner", params)
    }

    /** POST /api/partner/apply - Apply to partner program */
    fun apply(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/partner/apply", params)
    }

    /** GET /api/partner/tiers - List partner tiers */
    fun listTiers(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/tiers", params)
    }

    /** GET /api/partner/pricing - Get partner pricing */
    fun getPricing(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/pricing", params)
    }

    /** GET /api/partner/customers - List customers */
    fun listCustomers(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/customers", params)
    }

    /** GET /api/partner/earnings - Get earnings */
    fun getEarnings(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/earnings", params)
    }

    /** GET /api/partner/wallet - Get wallet balance */
    fun getWallet(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/wallet", params)
    }

    /** GET /api/partner/payouts - List payouts */
    fun listPayouts(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/payouts", params)
    }

    /** POST /api/partner/payouts - Request payout */
    fun requestPayout(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/partner/payouts", params)
    }

    /** GET /api/partner/leads - List leads */
    fun listLeads(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/leads", params)
    }

    /** POST /api/partner/leads - Create lead */
    fun createLead(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/partner/leads", params)
    }

    /** GET /api/partner/referral - Get referral info */
    fun getReferral(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/referral", params)
    }

    /** GET /api/partner/rates - Get exchange rates */
    fun getRates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/partner/rates", params)
    }

}
