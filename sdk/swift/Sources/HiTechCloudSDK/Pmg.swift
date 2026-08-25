import Foundation

/// HiTechCloudPMG: mail filtering configuration and management
public class PmgResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/htcpmg/config - Get mail filtering configuration
    public func getConfig(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpmg/config", params: params)
    }

    /// POST /api/service/{id}/htcpmg/domains - Add a domain
    public func addDomain(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/htcpmg/domains", params: params)
    }

    /// POST /api/service/{id}/htcpmg/transport - Set target mail server
    public func setTransport(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/htcpmg/transport", params: params)
    }

    /// GET /api/service/{id}/htcpmg/stats - Get mail statistics
    public func getStats(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcpmg/stats", params: params)
    }

}
