namespace HiTechCloud.SDK

/// Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces
type CloudServiceResource(httpClient: HttpClient) =

    /// POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown
    member this.ShutdownVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/shutdown")
        }

    /// POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power
    member this.ResetVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/reset")
        }

    /// POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname
    member this.ChangeHostname() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/hostname")
        }

    /// GET /api/service/{id}/vms/{vmid}/ippool - List IP pools
    member this.ListIpPools() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/ippool")
        }

    /// POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP
    member this.AllocateIp() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/ippool/{pool}")
        }

    /// GET /api/service/{id}/networks - List available networks
    member this.ListNetworks() =
        async {
            return! httpClient.getAsync("/api/service/{id}/networks")
        }

    /// POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface
    member this.AddInterface() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/interfaces")
        }

    /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details
    member this.GetInterface() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/interfaces/{iface}")
        }

    /// PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface
    member this.UpdateInterface() =
        async {
            return! httpClient.putAsync("/api/service/{id}/vms/{vmid}/interfaces/{iface}")
        }

    /// DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface
    member this.RemoveInterface() =
        async {
            return! httpClient.deleteAsync("/api/service/{id}/vms/{vmid}/interfaces/{iface}")
        }

