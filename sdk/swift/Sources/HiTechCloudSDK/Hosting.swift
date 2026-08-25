import Foundation

/// Hosting Services: reinstall, status, bandwidth, reset
public class HostingResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/reinstall - Return installation options
    public func getReinstallDetails(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/reinstall", params: params)
    }

    /// POST /api/service/{id}/reinstall - Reinstall server
    public func reinstall(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/reinstall", params: params)
    }

    /// GET /api/service/{id}/status - Return server power status
    public func getStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/status", params: params)
    }

    /// GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs
    public func getBandwidthGraphs(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/bandwidth-graphs", params: params)
    }

    /// GET /api/service/{id}/bandwidth - Return bandwidth usage and billing
    public func getBandwidthUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/bandwidth", params: params)
    }

    /// POST /api/service/{id}/reset - Reset server
    public func reset(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/reset", params: params)
    }

}
