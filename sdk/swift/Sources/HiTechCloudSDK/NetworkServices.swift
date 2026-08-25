import Foundation

/// Network Services: IP addresses and reverse DNS for services
public class NetworkServicesResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/ip - List Service IP Addresses
    public func listIps(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/ip", params: params)
    }

    /// GET /api/service/{id}/rdns - Get reverse DNS entries
    public func getRdns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/rdns", params: params)
    }

    /// POST /api/service/{id}/rdns - Update reverse DNS entries
    public func updateRdns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/rdns", params: params)
    }

}
