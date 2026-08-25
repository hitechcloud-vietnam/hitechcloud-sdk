import Foundation

/// Services: list, details, cancel, renew, billing cycle
public class ServicesResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service - List all services
    public func list(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service", params: params)
    }

    /// GET /api/service/{id} - Return service details
    public func get(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}", params: params)
    }

    /// GET /api/service/{id}/methods - List methods available for service
    public func listMethods(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/methods", params: params)
    }

    /// POST /api/service/{id}/cancel - Request service cancellation
    public func cancel(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/cancel", params: params)
    }

    /// GET /api/service/{id}/label - Show current service label
    public func getLabel(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/label", params: params)
    }

    /// POST /api/service/{id}/label - Set new custom label
    public func setLabel(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/label", params: params)
    }

    /// POST /api/service/{id}/renew - Generate renewal invoice
    public func renew(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/renew", params: params)
    }

    /// GET /api/service/{id}/cycle - Get billing cycle options
    public func listBillingCycles(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/cycle", params: params)
    }

    /// POST /api/service/{id}/cycle - Change billing cycle
    public func changeBillingCycle(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/cycle", params: params)
    }

}
