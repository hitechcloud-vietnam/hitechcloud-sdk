package vn.hitechcloud.sdk

/** Notifications: manage notification preferences */
class NotificationsResource(private val httpClient: HttpClient) {
    /** GET /api/notifications - List all notifications */
    fun list(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/notifications", params)
    }

    /** GET /api/notifications/new - Return only new portal notifications */
    fun listNew(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/notifications/new", params)
    }

    /** PUT /api/notifications/{id}/ack - Mark notification as read */
    fun acknowledge(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/notifications/{id}/ack", params)
    }

}
