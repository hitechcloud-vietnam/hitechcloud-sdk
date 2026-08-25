import Foundation

/// Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE
public class CloudVmResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/upgrade - List resource upgrade options
    public func getUpgradeOptions(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/upgrade", params: params)
    }

    /// POST /api/service/{id}/upgrade - Estimate or request upgrade
    public func requestUpgrade(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/upgrade", params: params)
    }

    /// GET /api/service/{id}/resources - Show available and used resources
    public func getResources(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/resources", params: params)
    }

    /// GET /api/service/{id}/templates/{vmid} - List rebuild templates
    public func listRebuildTemplates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/templates/{vmid}", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph
    public func getMemoryUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/usage/memory", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM
    public func listIsoImages(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/images", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image
    public func mountIso(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/images", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/boot - Change boot order
    public func setBootOrder(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/boot", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE
    public func enablePxe(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/tuntap", params: params)
    }

}
