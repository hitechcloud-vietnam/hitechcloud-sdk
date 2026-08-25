import Foundation

/// WillExpired: expiring services and domains management
public class WillExpiredResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/willexpired - List expiring services and domains
    public func listExpiring(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired", params: params)
    }

    /// GET /api/willexpired/summary - Expiring summary
    public func getSummary(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired/summary", params: params)
    }

    /// GET /api/willexpired/config - Module configuration
    public func getConfig(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired/config", params: params)
    }

    /// GET /api/willexpired/invoices - Open renewal invoices
    public func listOpenInvoices(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired/invoices", params: params)
    }

    /// GET /api/willexpired/requests - Renewal request log
    public func listRequests(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired/requests", params: params)
    }

    /// GET /api/willexpired/export - Export all expiring items
    public func exportAll(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired/export", params: params)
    }

    /// GET /api/willexpired/{type}/{id} - Get item detail
    public func getItem(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired/{type}/{id}", params: params)
    }

    /// POST /api/willexpired/{type}/{id}/renew - Renew item
    public func renew(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/willexpired/{type}/{id}/renew", params: params)
    }

    /// GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status
    public func getAutorenew(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/willexpired/{type}/{id}/autorenew", params: params)
    }

    /// PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew
    public func setAutorenew(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/willexpired/{type}/{id}/autorenew", params: params)
    }

}
