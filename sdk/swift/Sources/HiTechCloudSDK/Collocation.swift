import Foundation

/// Collocation Services: PDU port management
public class CollocationResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/pdu - List PDU ports assigned to service
    public func listPduPorts(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pdu", params: params)
    }

    /// GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state
    public func getPduPortState(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/pdu/{port}", params: params)
    }

    /// POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state
    public func setPduPortStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/pdu/{port}", params: params)
    }

}
