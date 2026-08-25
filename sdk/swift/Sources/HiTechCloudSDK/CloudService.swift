import Foundation

/// Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces
public class CloudServiceResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown
    public func shutdownVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/shutdown", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power
    public func resetVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/reset", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname
    public func changeHostname(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/hostname", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/ippool - List IP pools
    public func listIpPools(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/ippool", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP
    public func allocateIp(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/ippool/{pool}", params: params)
    }

    /// GET /api/service/{id}/networks - List available networks
    public func listNetworks(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/networks", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface
    public func addInterface(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/interfaces", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details
    public func getInterface(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/interfaces/{iface}", params: params)
    }

    /// PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface
    public func updateInterface(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{id}/vms/{vmid}/interfaces/{iface}", params: params)
    }

    /// DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface
    public func removeInterface(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{id}/vms/{vmid}/interfaces/{iface}", params: params)
    }

}
