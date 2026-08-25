import Foundation

/// Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power
public class BareMetalResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/reinstall/templates - List OS templates and recipes
    public func listReinstallTemplates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/reinstall/templates", params: params)
    }

    /// POST /api/service/{id}/diag/cancel - Cancel diagnostics operation
    public func cancelDiagnostics(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/diag/cancel", params: params)
    }

    /// GET /api/service/{id}/diag/templates - List diagnostics templates
    public func listDiagnosticsTemplates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/diag/templates", params: params)
    }

    /// GET /api/service/{id}/diag - Show diagnostic operation status
    public func getDiagnosticsStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/diag", params: params)
    }

    /// POST /api/service/{id}/diag - Start new diagnostic operation
    public func runDiagnostics(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/diag", params: params)
    }

    /// GET /api/service/{id}/rescue/templates - List rescue templates
    public func listRescueTemplates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/rescue/templates", params: params)
    }

    /// GET /api/service/{id}/rescue - Show rescue operation status
    public func getRescueStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/rescue", params: params)
    }

    /// POST /api/service/{id}/rescue - Start rescue operation
    public func rescue(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/rescue", params: params)
    }

    /// POST /api/service/{id}/rescue/cancel - Cancel rescue operation
    public func cancelRescue(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/rescue/cancel", params: params)
    }

    /// GET /api/service/{id}/info - Get server hardware and OS details
    public func getServerInfo(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/info", params: params)
    }

    /// POST /api/service/{id}/hostname - Update server hostname
    public func updateHostname(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/hostname", params: params)
    }

    /// GET /api/service/{id}/ips - List server IPs
    public func listIps(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/ips", params: params)
    }

    /// POST /api/service/{id}/ips - Add new IP to server
    public func addIp(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/ips", params: params)
    }

    /// GET /api/service/{id}/vlans - List available VLANs
    public func listVlans(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vlans", params: params)
    }

    /// GET /api/service/{id}/ips/{ip} - Get IP details
    public func getIpDetails(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/ips/{ip}", params: params)
    }

    /// PUT /api/service/{id}/ips/{ip} - Edit IP
    public func editIp(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{id}/ips/{ip}", params: params)
    }

    /// GET /api/service/{id}/reinstall - Return installation options
    public func getReinstallDetails(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/reinstall", params: params)
    }

    /// POST /api/service/{id}/reinstall - Reinstall server
    public func reinstall(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/reinstall", params: params)
    }

    /// GET /api/service/{id}/status - Return server power status
    public func getStatus(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/status", params: params)
    }

    /// POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)
    public func powerAction(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/power/{action}", params: params)
    }

    /// GET /api/serverstock - List servers in stock
    public func listServersInStock(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/serverstock", params: params)
    }

}
