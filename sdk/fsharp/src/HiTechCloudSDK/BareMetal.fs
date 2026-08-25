namespace HiTechCloud.SDK

/// Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power
type BareMetalResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/reinstall/templates - List OS templates and recipes
    member this.ListReinstallTemplates() =
        async {
            return! httpClient.getAsync("/api/service/{id}/reinstall/templates")
        }

    /// POST /api/service/{id}/diag/cancel - Cancel diagnostics operation
    member this.CancelDiagnostics() =
        async {
            return! httpClient.postAsync("/api/service/{id}/diag/cancel")
        }

    /// GET /api/service/{id}/diag/templates - List diagnostics templates
    member this.ListDiagnosticsTemplates() =
        async {
            return! httpClient.getAsync("/api/service/{id}/diag/templates")
        }

    /// GET /api/service/{id}/diag - Show diagnostic operation status
    member this.GetDiagnosticsStatus() =
        async {
            return! httpClient.getAsync("/api/service/{id}/diag")
        }

    /// POST /api/service/{id}/diag - Start new diagnostic operation
    member this.RunDiagnostics() =
        async {
            return! httpClient.postAsync("/api/service/{id}/diag")
        }

    /// GET /api/service/{id}/rescue/templates - List rescue templates
    member this.ListRescueTemplates() =
        async {
            return! httpClient.getAsync("/api/service/{id}/rescue/templates")
        }

    /// GET /api/service/{id}/rescue - Show rescue operation status
    member this.GetRescueStatus() =
        async {
            return! httpClient.getAsync("/api/service/{id}/rescue")
        }

    /// POST /api/service/{id}/rescue - Start rescue operation
    member this.Rescue() =
        async {
            return! httpClient.postAsync("/api/service/{id}/rescue")
        }

    /// POST /api/service/{id}/rescue/cancel - Cancel rescue operation
    member this.CancelRescue() =
        async {
            return! httpClient.postAsync("/api/service/{id}/rescue/cancel")
        }

    /// GET /api/service/{id}/info - Get server hardware and OS details
    member this.GetServerInfo() =
        async {
            return! httpClient.getAsync("/api/service/{id}/info")
        }

    /// POST /api/service/{id}/hostname - Update server hostname
    member this.UpdateHostname() =
        async {
            return! httpClient.postAsync("/api/service/{id}/hostname")
        }

    /// GET /api/service/{id}/ips - List server IPs
    member this.ListIps() =
        async {
            return! httpClient.getAsync("/api/service/{id}/ips")
        }

    /// POST /api/service/{id}/ips - Add new IP to server
    member this.AddIp() =
        async {
            return! httpClient.postAsync("/api/service/{id}/ips")
        }

    /// GET /api/service/{id}/vlans - List available VLANs
    member this.ListVlans() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vlans")
        }

    /// GET /api/service/{id}/ips/{ip} - Get IP details
    member this.GetIpDetails() =
        async {
            return! httpClient.getAsync("/api/service/{id}/ips/{ip}")
        }

    /// PUT /api/service/{id}/ips/{ip} - Edit IP
    member this.EditIp() =
        async {
            return! httpClient.putAsync("/api/service/{id}/ips/{ip}")
        }

    /// GET /api/service/{id}/reinstall - Return installation options
    member this.GetReinstallDetails() =
        async {
            return! httpClient.getAsync("/api/service/{id}/reinstall")
        }

    /// POST /api/service/{id}/reinstall - Reinstall server
    member this.Reinstall() =
        async {
            return! httpClient.postAsync("/api/service/{id}/reinstall")
        }

    /// GET /api/service/{id}/status - Return server power status
    member this.GetStatus() =
        async {
            return! httpClient.getAsync("/api/service/{id}/status")
        }

    /// POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)
    member this.PowerAction() =
        async {
            return! httpClient.postAsync("/api/service/{id}/power/{action}")
        }

    /// GET /api/serverstock - List servers in stock
    member this.ListServersInStock() =
        async {
            return! httpClient.getAsync("/api/serverstock")
        }

