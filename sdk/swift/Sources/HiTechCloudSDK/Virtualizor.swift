import Foundation

/// Virtualizor: VPS management via Virtualizor panel
public class VirtualizorResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server
    public func suspend(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/suspend", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server
    public func unsuspend(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/unsuspend", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates
    public func listRebuildTemplates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/rebuild", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key
    public func changeSshKey(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/addsshkey", params: params)
    }

}
