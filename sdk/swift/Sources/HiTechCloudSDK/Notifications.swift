import Foundation

/// Notifications: manage notification preferences
public class NotificationsResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/notifications - List all notifications
    public func list(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/notifications", params: params)
    }

    /// GET /api/notifications/new - Return only new portal notifications
    public func listNew(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/notifications/new", params: params)
    }

    /// PUT /api/notifications/{id}/ack - Mark notification as read
    public func acknowledge(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/notifications/{id}/ack", params: params)
    }

}
