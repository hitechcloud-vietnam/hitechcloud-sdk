import Foundation

/// DNS: zones and records management for services
public class DnsResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/dns - List all DNS zones
    public func list(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/dns", params: params)
    }

    /// GET /api/service/{service_id}/dns - List DNS zones for service
    public func listForService(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{service_id}/dns", params: params)
    }

    /// POST /api/service/{service_id}/dns - Create DNS zone
    public func addZone(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{service_id}/dns", params: params)
    }

    /// GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details
    public func getZone(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{service_id}/dns/{zone_id}", params: params)
    }

    /// DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone
    public func deleteZone(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{service_id}/dns/{zone_id}", params: params)
    }

    /// POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record
    public func addRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{service_id}/dns/{zone_id}/records", params: params)
    }

    /// PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record
    public func editRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", params: params)
    }

    /// DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record
    public func deleteRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", params: params)
    }

}
