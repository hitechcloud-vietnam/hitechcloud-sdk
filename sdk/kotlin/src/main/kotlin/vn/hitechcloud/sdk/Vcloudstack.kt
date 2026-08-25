package vn.hitechcloud.sdk

/** vCloudStack Public Cloud: rescue, unrescue, console, usage */
class VCloudStackResource(private val httpClient: HttpClient) {
    /** POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode */
    fun rescueVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/rescue", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode */
    fun unrescueVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/unrescue", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/console - Get VM console */
    fun getConsole(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/console", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details */
    fun getUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/usage", params)
    }

}
