import Foundation

/// Service Status: list and manage service statuses
public class ServiceStatusResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/statuses - Returns a list of all statuses
    public func list(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/statuses", params: params)
    }

    /// PUT /api/statuses/{id} - Returns details of status
    public func get(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/statuses/{id}", params: params)
    }

}
