import Foundation

/// Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding
public class DomainsResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/domain - List domains under your account
    public func list(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain", params: params)
    }

    /// GET /api/domain/{id} - Get domain details
    public func get(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}", params: params)
    }

    /// GET /api/domain/name/{name} - Get domain details by name
    public func getByName(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/name/{name}", params: params)
    }

    /// GET /api/whois/{domain} - WHOIS lookup
    public func whois(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/whois/{domain}", params: params)
    }

    /// GET /api/whoislookup/{domain} - Perform WHOIS lookup
    public func whoisLookup(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/whoislookup/{domain}", params: params)
    }

    /// GET /api/domain/availability/{domain} - Check domain availability
    public func checkAvailability(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/availability/{domain}", params: params)
    }

    /// GET /api/domain/{id}/ns - Get domain nameservers
    public func getNameservers(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/ns", params: params)
    }

    /// PUT /api/domain/{id}/ns - Update domain nameservers
    public func updateNameservers(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/domain/{id}/ns", params: params)
    }

    /// GET /api/domain/{id}/epp - Get domain EPP code
    public func getEppCode(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/epp", params: params)
    }

    /// GET /api/domain/{id}/sync - Synchronize domain
    public func sync(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/sync", params: params)
    }

    /// GET /api/domain/{id}/reglock - Get domain lock status
    public func getLock(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/reglock", params: params)
    }

    /// PUT /api/domain/{id}/reglock - Update domain lock
    public func updateLock(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/domain/{id}/reglock", params: params)
    }

    /// PUT /api/domain/{id}/idprotection - Update ID protection
    public func updateIdProtection(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/domain/{id}/idprotection", params: params)
    }

    /// GET /api/domain/{id}/contact - Get domain contact info
    public func getContact(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/contact", params: params)
    }

    /// PUT /api/domain/{id}/contact - Update domain contact info
    public func updateContact(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/domain/{id}/contact", params: params)
    }

    /// GET /api/domain/{id}/email/forwarding - Get email forwarding
    public func getEmailForwarding(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/email/forwarding", params: params)
    }

    /// PUT /api/domain/{id}/email/forwarding - Update email forwarding
    public func updateEmailForwarding(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/domain/{id}/email/forwarding", params: params)
    }

    /// GET /api/domain/order - List available TLDs
    public func getAvailableTlds(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/order", params: params)
    }

    /// POST /api/domain/order - Order new domain
    public func order(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/domain/order", params: params)
    }

    /// POST /api/domain/{id}/renew - Renew domain
    public func renew(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/domain/{id}/renew", params: params)
    }

    /// GET /api/domain/order/{id}/form - Get additional data for TLD
    public func getTldForm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/order/{id}/form", params: params)
    }

    /// GET /api/domain/{id}/documents - Get domain documents
    public func getDocuments(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/documents", params: params)
    }

}
