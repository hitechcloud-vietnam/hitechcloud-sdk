import Foundation

/// Cloud GPU: GPU instance management
public class CloudGpuResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// PUT /api/service/{id}/vms/reboot - Reboot virtual server
    public func reboot(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{id}/vms/reboot", params: params)
    }

    /// PUT /api/service/{id}/vms/stop - Stop virtual server
    public func stop(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{id}/vms/stop", params: params)
    }

    /// PUT /api/service/{id}/vms/start - Start virtual server
    public func start(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{id}/vms/start", params: params)
    }

    /// GET /api/service/{id}/vms/firewall - Get firewall rules
    public func getFirewallRules(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/firewall", params: params)
    }

    /// POST /api/service/{id}/vms/firewall - Add firewall rules
    public func addFirewallRules(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/firewall", params: params)
    }

    /// DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule
    public func removeFirewallRule(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{id}/vms/firewall/{position}", params: params)
    }

}
