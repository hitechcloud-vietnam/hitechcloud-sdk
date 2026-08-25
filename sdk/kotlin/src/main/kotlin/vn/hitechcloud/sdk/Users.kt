package vn.hitechcloud.sdk

/** User Profile: view/update account details, logs */
class UsersResource(private val httpClient: HttpClient) {
    /** GET /api/details - Return registration details for my account */
    fun getDetails(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/details", params)
    }

    /** PUT /api/details - Update registration details */
    fun updateDetails(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/details", params)
    }

    /** GET /api/logs - Returns logs from history */
    fun getLogs(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/logs", params)
    }

}
