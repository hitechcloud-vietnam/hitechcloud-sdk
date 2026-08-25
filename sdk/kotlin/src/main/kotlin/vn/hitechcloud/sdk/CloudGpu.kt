package vn.hitechcloud.sdk

/** Cloud GPU: GPU instance management */
class CloudGpuResource(private val httpClient: HttpClient) {
    /** PUT /api/service/{id}/vms/reboot - Reboot virtual server */
    fun reboot(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{id}/vms/reboot", params)
    }

    /** PUT /api/service/{id}/vms/stop - Stop virtual server */
    fun stop(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{id}/vms/stop", params)
    }

    /** PUT /api/service/{id}/vms/start - Start virtual server */
    fun start(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{id}/vms/start", params)
    }

    /** GET /api/service/{id}/vms/firewall - Get firewall rules */
    fun getFirewallRules(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/firewall", params)
    }

    /** POST /api/service/{id}/vms/firewall - Add firewall rules */
    fun addFirewallRules(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/firewall", params)
    }

    /** DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule */
    fun removeFirewallRule(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{id}/vms/firewall/{position}", params)
    }

}
