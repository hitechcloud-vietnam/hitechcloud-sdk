namespace HiTechCloud.SDK

/// Cloud GPU: GPU instance management
type CloudGpuResource(httpClient: HttpClient) =

    /// PUT /api/service/{id}/vms/reboot - Reboot virtual server
    member this.Reboot() =
        async {
            return! httpClient.putAsync("/api/service/{id}/vms/reboot")
        }

    /// PUT /api/service/{id}/vms/stop - Stop virtual server
    member this.Stop() =
        async {
            return! httpClient.putAsync("/api/service/{id}/vms/stop")
        }

    /// PUT /api/service/{id}/vms/start - Start virtual server
    member this.Start() =
        async {
            return! httpClient.putAsync("/api/service/{id}/vms/start")
        }

    /// GET /api/service/{id}/vms/firewall - Get firewall rules
    member this.GetFirewallRules() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/firewall")
        }

    /// POST /api/service/{id}/vms/firewall - Add firewall rules
    member this.AddFirewallRules() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/firewall")
        }

    /// DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule
    member this.RemoveFirewallRule() =
        async {
            return! httpClient.deleteAsync("/api/service/{id}/vms/firewall/{position}")
        }

