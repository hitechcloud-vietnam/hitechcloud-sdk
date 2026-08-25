package vn.hitechcloud.sdk

/** Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces */
class CloudServiceResource(private val httpClient: HttpClient) {
    /** POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown */
    fun shutdownVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/shutdown", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power */
    fun resetVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/reset", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname */
    fun changeHostname(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/hostname", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/ippool - List IP pools */
    fun listIpPools(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/ippool", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP */
    fun allocateIp(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/ippool/{pool}", params)
    }

    /** GET /api/service/{id}/networks - List available networks */
    fun listNetworks(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/networks", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface */
    fun addInterface(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/interfaces", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details */
    fun getInterface(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/interfaces/{iface}", params)
    }

    /** PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface */
    fun updateInterface(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{id}/vms/{vmid}/interfaces/{iface}", params)
    }

    /** DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface */
    fun removeInterface(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{id}/vms/{vmid}/interfaces/{iface}", params)
    }

}
