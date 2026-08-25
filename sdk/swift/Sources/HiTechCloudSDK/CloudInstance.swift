import Foundation

/// Cloud Instance: full VM lifecycle management
public class CloudInstanceResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/service/{id}/vms - List virtual servers
    public func listVms(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms", params: params)
    }

    /// POST /api/service/{id}/vms - Create new virtual server
    public func createVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid} - Get VM details
    public func getVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}", params: params)
    }

    /// DELETE /api/service/{id}/vms/{vmid} - Remove virtual server
    public func destroyVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{id}/vms/{vmid}", params: params)
    }

    /// PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server
    public func resizeVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{id}/vms/{vmid}", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server
    public func stopVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/stop", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/start - Start virtual server
    public func startVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/start", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server
    public func rebootVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/reboot", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password
    public func resetPassword(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/resetpwd", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server
    public func rebuildVm(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/rebuild", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM
    public func listVmIps(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/ips", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM
    public func assignIp(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/ips", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces
    public func listInterfaces(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/interfaces", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph
    public func getCpuUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/usage/cpu", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph
    public func getNetworkUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/usage/net", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph
    public func getDiskUsage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/usage/disk", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM
    public func listDisks(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/storage", params: params)
    }

    /// PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk
    public func resizeDisk(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.put("/api/service/{id}/vms/{vmid}/storage/{diskid}", params: params)
    }

    /// GET /api/service/{id}/images - List ISO images
    public func listIsoImages(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/images", params: params)
    }

    /// POST /api/service/{id}/images - Add ISO image
    public func addIsoImage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/images", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs
    public func listAvailableIps(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips", params: params)
    }

    /// DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM
    public func removeIp(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/service/{id}/vms/{vmid}/ips/{ipid}", params: params)
    }

    /// GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries
    public func getRdns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/service/{id}/vms/{vmid}/rdns", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries
    public func updateRdns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/rdns", params: params)
    }

    /// POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network
    public func rebuildNetwork(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/service/{id}/vms/{vmid}/rebuild_network", params: params)
    }

}
