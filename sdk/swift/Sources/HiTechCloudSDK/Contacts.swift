import Foundation

/// Contacts: manage account contacts
public class ContactsResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/contact - Return a list of contacts on this account
    public func list(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/contact", params: params)
    }

    /// POST /api/contact - Create new contact account
    public func create(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/contact", params: params)
    }

    /// GET /api/contact/privileges - List possible contact privileges
    public func getPrivileges(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/contact/privileges", params: params)
    }

    /// GET /api/contact/{id} - Get contact details
    public func get(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/contact/{id}", params: params)
    }

    /// PUT /api/contact/{id} - Update contact details
    public func update(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/contact/{id}", params: params)
    }

}
