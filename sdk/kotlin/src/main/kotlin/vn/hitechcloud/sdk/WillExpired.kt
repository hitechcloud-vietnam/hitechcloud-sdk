package vn.hitechcloud.sdk

/** WillExpired: expiring services and domains management */
class WillExpiredResource(private val httpClient: HttpClient) {
    /** GET /api/willexpired - List expiring services and domains */
    fun listExpiring(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired", params)
    }

    /** GET /api/willexpired/summary - Expiring summary */
    fun getSummary(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired/summary", params)
    }

    /** GET /api/willexpired/config - Module configuration */
    fun getConfig(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired/config", params)
    }

    /** GET /api/willexpired/invoices - Open renewal invoices */
    fun listOpenInvoices(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired/invoices", params)
    }

    /** GET /api/willexpired/requests - Renewal request log */
    fun listRequests(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired/requests", params)
    }

    /** GET /api/willexpired/export - Export all expiring items */
    fun exportAll(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired/export", params)
    }

    /** GET /api/willexpired/{type}/{id} - Get item detail */
    fun getItem(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired/{type}/{id}", params)
    }

    /** POST /api/willexpired/{type}/{id}/renew - Renew item */
    fun renew(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/willexpired/{type}/{id}/renew", params)
    }

    /** GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status */
    fun getAutorenew(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/willexpired/{type}/{id}/autorenew", params)
    }

    /** PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew */
    fun setAutorenew(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/willexpired/{type}/{id}/autorenew", params)
    }

}
