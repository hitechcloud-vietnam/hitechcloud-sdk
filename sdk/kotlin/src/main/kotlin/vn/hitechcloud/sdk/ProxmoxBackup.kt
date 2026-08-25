package vn.hitechcloud.sdk

/** Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token */
class ProxmoxBackupResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/pbs - Get backup connection info */
    fun getConnectionInfo(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pbs", params)
    }

    /** GET /api/service/{id}/pbs/credentials - Get backup credentials */
    fun getCredentials(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pbs/credentials", params)
    }

    /** GET /api/service/{id}/pbs/usage - Get backup usage */
    fun getUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pbs/usage", params)
    }

    /** GET /api/service/{id}/pbs/metrics - Get backup metrics */
    fun getMetrics(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pbs/metrics", params)
    }

    /** GET /api/service/{id}/pbs/snapshots - List snapshots */
    fun listSnapshots(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pbs/snapshots", params)
    }

    /** GET /api/service/{id}/pbs/groups - List backup groups */
    fun listGroups(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/pbs/groups", params)
    }

    /** POST /api/service/{id}/pbs/password - Change backup password */
    fun changePassword(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/pbs/password", params)
    }

    /** POST /api/service/{id}/pbs/token - Rotate API token */
    fun rotateToken(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/pbs/token", params)
    }

    /** DELETE /api/service/{id}/pbs/token - Revoke API token */
    fun revokeToken(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{id}/pbs/token", params)
    }

}
