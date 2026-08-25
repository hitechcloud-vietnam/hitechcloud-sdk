package vn.hitechcloud.sdk

/** Virtualizor: VPS management via Virtualizor panel */
class VirtualizorResource(private val httpClient: HttpClient) {
    /** POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server */
    fun suspend(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/suspend", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server */
    fun unsuspend(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/unsuspend", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates */
    fun listRebuildTemplates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/rebuild", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key */
    fun changeSshKey(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/addsshkey", params)
    }

}
