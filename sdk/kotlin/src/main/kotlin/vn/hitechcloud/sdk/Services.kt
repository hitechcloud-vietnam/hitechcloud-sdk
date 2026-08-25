package vn.hitechcloud.sdk

/** Services: list, details, cancel, renew, billing cycle */
class ServicesResource(private val httpClient: HttpClient) {
    /** GET /api/service - List all services */
    fun list(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service", params)
    }

    /** GET /api/service/{id} - Return service details */
    fun get(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}", params)
    }

    /** GET /api/service/{id}/methods - List methods available for service */
    fun listMethods(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/methods", params)
    }

    /** POST /api/service/{id}/cancel - Request service cancellation */
    fun cancel(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/cancel", params)
    }

    /** GET /api/service/{id}/label - Show current service label */
    fun getLabel(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/label", params)
    }

    /** POST /api/service/{id}/label - Set new custom label */
    fun setLabel(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/label", params)
    }

    /** POST /api/service/{id}/renew - Generate renewal invoice */
    fun renew(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/renew", params)
    }

    /** GET /api/service/{id}/cycle - Get billing cycle options */
    fun listBillingCycles(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/cycle", params)
    }

    /** POST /api/service/{id}/cycle - Change billing cycle */
    fun changeBillingCycle(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/cycle", params)
    }

}
