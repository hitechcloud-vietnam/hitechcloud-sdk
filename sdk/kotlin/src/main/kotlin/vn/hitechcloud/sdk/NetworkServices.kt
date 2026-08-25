package vn.hitechcloud.sdk

/** Network Services: IP addresses and reverse DNS for services */
class NetworkServicesResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/ip - List Service IP Addresses */
    fun listIps(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/ip", params)
    }

    /** GET /api/service/{id}/rdns - Get reverse DNS entries */
    fun getRdns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/rdns", params)
    }

    /** POST /api/service/{id}/rdns - Update reverse DNS entries */
    fun updateRdns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/rdns", params)
    }

}
