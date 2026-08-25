package vn.hitechcloud.sdk

/** Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power */
class BareMetalResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/reinstall/templates - List OS templates and recipes */
    fun listReinstallTemplates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/reinstall/templates", params)
    }

    /** POST /api/service/{id}/diag/cancel - Cancel diagnostics operation */
    fun cancelDiagnostics(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/diag/cancel", params)
    }

    /** GET /api/service/{id}/diag/templates - List diagnostics templates */
    fun listDiagnosticsTemplates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/diag/templates", params)
    }

    /** GET /api/service/{id}/diag - Show diagnostic operation status */
    fun getDiagnosticsStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/diag", params)
    }

    /** POST /api/service/{id}/diag - Start new diagnostic operation */
    fun runDiagnostics(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/diag", params)
    }

    /** GET /api/service/{id}/rescue/templates - List rescue templates */
    fun listRescueTemplates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/rescue/templates", params)
    }

    /** GET /api/service/{id}/rescue - Show rescue operation status */
    fun getRescueStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/rescue", params)
    }

    /** POST /api/service/{id}/rescue - Start rescue operation */
    fun rescue(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/rescue", params)
    }

    /** POST /api/service/{id}/rescue/cancel - Cancel rescue operation */
    fun cancelRescue(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/rescue/cancel", params)
    }

    /** GET /api/service/{id}/info - Get server hardware and OS details */
    fun getServerInfo(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/info", params)
    }

    /** POST /api/service/{id}/hostname - Update server hostname */
    fun updateHostname(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/hostname", params)
    }

    /** GET /api/service/{id}/ips - List server IPs */
    fun listIps(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/ips", params)
    }

    /** POST /api/service/{id}/ips - Add new IP to server */
    fun addIp(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/ips", params)
    }

    /** GET /api/service/{id}/vlans - List available VLANs */
    fun listVlans(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/vlans", params)
    }

    /** GET /api/service/{id}/ips/{ip} - Get IP details */
    fun getIpDetails(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/ips/{ip}", params)
    }

    /** PUT /api/service/{id}/ips/{ip} - Edit IP */
    fun editIp(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.put("/api/service/{id}/ips/{ip}", params)
    }

    /** GET /api/service/{id}/reinstall - Return installation options */
    fun getReinstallDetails(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/reinstall", params)
    }

    /** POST /api/service/{id}/reinstall - Reinstall server */
    fun reinstall(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/reinstall", params)
    }

    /** GET /api/service/{id}/status - Return server power status */
    fun getStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/status", params)
    }

    /** POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown) */
    fun powerAction(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/power/{action}", params)
    }

    /** GET /api/serverstock - List servers in stock */
    fun listServersInStock(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/serverstock", params)
    }

}
