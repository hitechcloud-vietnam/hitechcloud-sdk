package vn.hitechcloud.sdk

/** Cloud Instance: full VM lifecycle management */
class CloudInstanceResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/vms - List virtual servers */
    fun listVms(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms", params)
    }

    /** POST /api/service/{id}/vms - Create new virtual server */
    fun createVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms", params)
    }

    /** GET /api/service/{id}/vms/{vmid} - Get VM details */
    fun getVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}", params)
    }

    /** DELETE /api/service/{id}/vms/{vmid} - Remove virtual server */
    fun destroyVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{id}/vms/{vmid}", params)
    }

    /** PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server */
    fun resizeVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{id}/vms/{vmid}", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server */
    fun stopVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/stop", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/start - Start virtual server */
    fun startVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/start", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server */
    fun rebootVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/reboot", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password */
    fun resetPassword(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/resetpwd", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server */
    fun rebuildVm(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/rebuild", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM */
    fun listVmIps(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/ips", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM */
    fun assignIp(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/ips", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces */
    fun listInterfaces(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/interfaces", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph */
    fun getCpuUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/usage/cpu", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph */
    fun getNetworkUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/usage/net", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph */
    fun getDiskUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/usage/disk", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM */
    fun listDisks(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/storage", params)
    }

    /** PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk */
    fun resizeDisk(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{id}/vms/{vmid}/storage/{diskid}", params)
    }

    /** GET /api/service/{id}/images - List ISO images */
    fun listIsoImages(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/images", params)
    }

    /** POST /api/service/{id}/images - Add ISO image */
    fun addIsoImage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/images", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs */
    fun listAvailableIps(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips", params)
    }

    /** DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM */
    fun removeIp(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.delete("/api/service/{id}/vms/{vmid}/ips/{ipid}", params)
    }

    /** GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries */
    fun getRdns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vms/{vmid}/rdns", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries */
    fun updateRdns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/rdns", params)
    }

    /** POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network */
    fun rebuildNetwork(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/vms/{vmid}/rebuild_network", params)
    }

}
