import Foundation

/// SSL Certificates: list, order, download certificates
public class SSLResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/certificate - List all SSL certificates
    public func list(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/certificate", params: params)
    }

    /// GET /api/certificate/{id} - Return certificate details
    public func get(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/certificate/{id}", params: params)
    }

    /// GET /api/certificate/{id}/crt - Download X.509 certificate
    public func download(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/certificate/{id}/crt", params: params)
    }

    /// GET /api/certificate/order - List available certificates for purchase
    public func listAvailable(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/certificate/order", params: params)
    }

    /// POST /api/certificate/order - Order new certificate
    public func order(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/certificate/order", params: params)
    }

    /// GET /api/certificate/order/{product_id}/software - List server software
    public func listServerSoftware(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/certificate/order/{product_id}/software", params: params)
    }

}
