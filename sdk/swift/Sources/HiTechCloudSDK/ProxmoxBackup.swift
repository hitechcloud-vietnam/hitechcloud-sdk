import Foundation

/// Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token
public class ProxmoxBackupResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/pbs - Get backup connection info
    public func getConnectionInfo(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pbs", params: params)
    }

    /// GET /api/service/{id}/pbs/credentials - Get backup credentials
    public func getCredentials(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pbs/credentials", params: params)
    }

    /// GET /api/service/{id}/pbs/usage - Get backup usage
    public func getUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pbs/usage", params: params)
    }

    /// GET /api/service/{id}/pbs/metrics - Get backup metrics
    public func getMetrics(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pbs/metrics", params: params)
    }

    /// GET /api/service/{id}/pbs/snapshots - List snapshots
    public func listSnapshots(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pbs/snapshots", params: params)
    }

    /// GET /api/service/{id}/pbs/groups - List backup groups
    public func listGroups(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pbs/groups", params: params)
    }

    /// POST /api/service/{id}/pbs/password - Change backup password
    public func changePassword(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/pbs/password", params: params)
    }

    /// POST /api/service/{id}/pbs/token - Rotate API token
    public func rotateToken(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/pbs/token", params: params)
    }

    /// DELETE /api/service/{id}/pbs/token - Revoke API token
    public func revokeToken(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{id}/pbs/token", params: params)
    }

}
