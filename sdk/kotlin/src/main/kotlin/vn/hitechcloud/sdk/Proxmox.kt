package vn.hitechcloud.sdk

/** HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth */
class ProxmoxResource(private val httpClient: HttpClient) {
    /** GET /api/service/{id}/htcpve/status - Get machine status */
    fun getStatus(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpve/status", params)
    }

    /** POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset) */
    fun powerAction(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/htcpve/power", params)
    }

    /** GET /api/service/{id}/htcpve/vms - List machines */
    fun listVms(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpve/vms", params)
    }

    /** GET /api/service/{id}/htcpve/ips - List addresses */
    fun listIps(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpve/ips", params)
    }

    /** POST /api/service/{id}/htcpve/rdns - Set reverse DNS */
    fun setRdns(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/htcpve/rdns", params)
    }

    /** GET /api/service/{id}/htcpve/backups - List backups */
    fun listBackups(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpve/backups", params)
    }

    /** POST /api/service/{id}/htcpve/backups - Create backup */
    fun createBackup(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/htcpve/backups", params)
    }

    /** GET /api/service/{id}/htcpve/snapshots - List snapshots */
    fun listSnapshots(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpve/snapshots", params)
    }

    /** POST /api/service/{id}/htcpve/snapshots - Create snapshot */
    fun createSnapshot(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/service/{id}/htcpve/snapshots", params)
    }

    /** GET /api/service/{id}/htcpve/usage - Get bandwidth usage */
    fun getBandwidthUsage(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/service/{id}/htcpve/usage", params)
    }

}
