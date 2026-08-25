package vn.hitechcloud.sdk

/** HiTechCloudPMG: mail filtering configuration and management */
class PmgResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/htcpmg/config - Get mail filtering configuration */
    fun getConfig(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpmg/config", params)
    }

    /** POST /api/service/{id}/htcpmg/domains - Add a domain */
    fun addDomain(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/htcpmg/domains", params)
    }

    /** POST /api/service/{id}/htcpmg/transport - Set target mail server */
    fun setTransport(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/htcpmg/transport", params)
    }

    /** GET /api/service/{id}/htcpmg/stats - Get mail statistics */
    fun getStats(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpmg/stats", params)
    }

}
