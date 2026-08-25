package vn.hitechcloud.sdk

/** Hosting Services: reinstall, status, bandwidth, reset */
class HostingResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/reinstall - Return installation options */
    fun getReinstallDetails(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/reinstall", params)
    }

    /** POST /api/service/{id}/reinstall - Reinstall server */
    fun reinstall(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/reinstall", params)
    }

    /** GET /api/service/{id}/status - Return server power status */
    fun getStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/status", params)
    }

    /** GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs */
    fun getBandwidthGraphs(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/bandwidth-graphs", params)
    }

    /** GET /api/service/{id}/bandwidth - Return bandwidth usage and billing */
    fun getBandwidthUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/bandwidth", params)
    }

    /** POST /api/service/{id}/reset - Reset server */
    fun reset(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/reset", params)
    }

}
