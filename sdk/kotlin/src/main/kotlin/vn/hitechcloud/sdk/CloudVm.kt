package vn.hitechcloud.sdk

/** Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE */
class CloudVmResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/upgrade - List resource upgrade options */
    fun getUpgradeOptions(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/upgrade", params)
    }

    /** POST /api/service/{id}/upgrade - Estimate or request upgrade */
    fun requestUpgrade(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/upgrade", params)
    }

    /** GET /api/service/{id}/resources - Show available and used resources */
    fun getResources(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/resources", params)
    }

    /** GET /api/service/{id}/templates/{vmid} - List rebuild templates */
    fun listRebuildTemplates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/templates/{vmid}", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph */
    fun getMemoryUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/usage/memory", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM */
    fun listIsoImages(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/images", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image */
    fun mountIso(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/images", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/boot - Change boot order */
    fun setBootOrder(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/boot", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE */
    fun enablePxe(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/tuntap", params)
    }

}
