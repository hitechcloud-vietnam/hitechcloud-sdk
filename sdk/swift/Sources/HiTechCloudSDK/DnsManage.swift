import Foundation

/// DNS Manage: domain DNS records, DNSSEC, nameserver registration
public class DnsManageResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/domain/{id}/dns - List DNS records
    public func getRecords(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/dns", params: params)
    }

    /// POST /api/domain/{id}/dns - Create DNS record
    public func createRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/domain/{id}/dns", params: params)
    }

    /// PUT /api/domain/{id}/dns/{index} - Update DNS record
    public func updateRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/domain/{id}/dns/{index}", params: params)
    }

    /// DELETE /api/domain/{id}/dns/{index} - Remove DNS record
    public func deleteRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/domain/{id}/dns/{index}", params: params)
    }

    /// GET /api/domain/{id}/dns/types - List supported record types
    public func getRecordTypes(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/dns/types", params: params)
    }

    /// GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags
    public func getDnssecFlags(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/dnssec/flags", params: params)
    }

    /// GET /api/domain/{id}/dnssec - Get DNSSEC records
    public func getDnssecRecords(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/domain/{id}/dnssec", params: params)
    }

    /// POST /api/domain/{id}/dnssec - Create DNSSEC record
    public func createDnssecRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/domain/{id}/dnssec", params: params)
    }

    /// DELETE /api/domain/{id}/dnssec - Remove DNSSEC record
    public func deleteDnssecRecord(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/domain/{id}/dnssec", params: params)
    }

    /// POST /api/domain/{id}/reg - Register domain nameserver
    public func registerNameserver(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/domain/{id}/reg", params: params)
    }

}
