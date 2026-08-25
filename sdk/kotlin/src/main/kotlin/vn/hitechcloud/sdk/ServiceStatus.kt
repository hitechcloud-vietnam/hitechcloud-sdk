package vn.hitechcloud.sdk

/** Service Status: list and manage service statuses */
class ServiceStatusResource(private val httpClient: HttpClient) {
    /** GET /api/statuses - Returns a list of all statuses */
    fun list(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/statuses", params)
    }

    /** PUT /api/statuses/{id} - Returns details of status */
    fun get(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/statuses/{id}", params)
    }

}
