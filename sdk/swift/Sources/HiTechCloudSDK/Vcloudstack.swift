import Foundation

/// vCloudStack Public Cloud: rescue, unrescue, console, usage
public class VCloudStackResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode
    public func rescueVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/rescue", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode
    public func unrescueVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/unrescue", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/console - Get VM console
    public func getConsole(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/console", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details
    public func getUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/usage", params: params)
    }

}
