import Foundation

/// User Profile: view/update account details, logs
public class UsersResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/details - Return registration details for my account
    public func getDetails(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/details", params: params)
    }

    /// PUT /api/details - Update registration details
    public func updateDetails(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/details", params: params)
    }

    /// GET /api/logs - Returns logs from history
    public func getLogs(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/logs", params: params)
    }

}
