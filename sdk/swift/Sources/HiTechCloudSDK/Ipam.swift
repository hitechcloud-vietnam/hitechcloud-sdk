import Foundation

/// HiTechCloudIPAM: IP addresses, subnets, reverse DNS
public class IpamResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/htcipam/ips - List IP addresses
    public func listIps(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcipam/ips", params: params)
    }

    /// GET /api/service/{id}/htcipam/subnets - List subnets
    public func listSubnets(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcipam/subnets", params: params)
    }

    /// GET /api/service/{id}/htcipam/rdns - List reverse DNS records
    public func listRdns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/htcipam/rdns", params: params)
    }

    /// POST /api/service/{id}/htcipam/rdns - Set reverse DNS
    public func setRdns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/htcipam/rdns", params: params)
    }

}
