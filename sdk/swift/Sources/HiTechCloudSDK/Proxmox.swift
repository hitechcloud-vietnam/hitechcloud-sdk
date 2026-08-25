import Foundation

/// HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth
public class ProxmoxResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/htcpve/status - Get machine status
    public func getStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpve/status", params: params)
    }

    /// POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)
    public func powerAction(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/htcpve/power", params: params)
    }

    /// GET /api/service/{id}/htcpve/vms - List machines
    public func listVms(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpve/vms", params: params)
    }

    /// GET /api/service/{id}/htcpve/ips - List addresses
    public func listIps(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpve/ips", params: params)
    }

    /// POST /api/service/{id}/htcpve/rdns - Set reverse DNS
    public func setRdns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/htcpve/rdns", params: params)
    }

    /// GET /api/service/{id}/htcpve/backups - List backups
    public func listBackups(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpve/backups", params: params)
    }

    /// POST /api/service/{id}/htcpve/backups - Create backup
    public func createBackup(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/htcpve/backups", params: params)
    }

    /// GET /api/service/{id}/htcpve/snapshots - List snapshots
    public func listSnapshots(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpve/snapshots", params: params)
    }

    /// POST /api/service/{id}/htcpve/snapshots - Create snapshot
    public func createSnapshot(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/htcpve/snapshots", params: params)
    }

    /// GET /api/service/{id}/htcpve/usage - Get bandwidth usage
    public func getBandwidthUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpve/usage", params: params)
    }

}
