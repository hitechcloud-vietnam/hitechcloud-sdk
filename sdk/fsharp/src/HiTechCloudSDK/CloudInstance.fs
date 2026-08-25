namespace HiTechCloud.SDK

/// Cloud Instance: full VM lifecycle management
type CloudInstanceResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/vms - List virtual servers
    member this.ListVms() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms")
        }

    /// POST /api/service/{id}/vms - Create new virtual server
    member this.CreateVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms")
        }

    /// GET /api/service/{id}/vms/{vmid} - Get VM details
    member this.GetVm() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}")
        }

    /// DELETE /api/service/{id}/vms/{vmid} - Remove virtual server
    member this.DestroyVm() =
        async {
            return! httpClient.deleteAsync("/api/service/{id}/vms/{vmid}")
        }

    /// PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server
    member this.ResizeVm() =
        async {
            return! httpClient.putAsync("/api/service/{id}/vms/{vmid}")
        }

    /// POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server
    member this.StopVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/stop")
        }

    /// POST /api/service/{id}/vms/{vmid}/start - Start virtual server
    member this.StartVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/start")
        }

    /// POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server
    member this.RebootVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/reboot")
        }

    /// POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password
    member this.ResetPassword() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/resetpwd")
        }

    /// POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server
    member this.RebuildVm() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/rebuild")
        }

    /// GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM
    member this.ListVmIps() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/ips")
        }

    /// POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM
    member this.AssignIp() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/ips")
        }

    /// GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces
    member this.ListInterfaces() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/interfaces")
        }

    /// GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph
    member this.GetCpuUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/usage/cpu")
        }

    /// GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph
    member this.GetNetworkUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/usage/net")
        }

    /// GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph
    member this.GetDiskUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/usage/disk")
        }

    /// GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM
    member this.ListDisks() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/storage")
        }

    /// PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk
    member this.ResizeDisk() =
        async {
            return! httpClient.putAsync("/api/service/{id}/vms/{vmid}/storage/{diskid}")
        }

    /// GET /api/service/{id}/images - List ISO images
    member this.ListIsoImages() =
        async {
            return! httpClient.getAsync("/api/service/{id}/images")
        }

    /// POST /api/service/{id}/images - Add ISO image
    member this.AddIsoImage() =
        async {
            return! httpClient.postAsync("/api/service/{id}/images")
        }

    /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs
    member this.ListAvailableIps() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips")
        }

    /// DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM
    member this.RemoveIp() =
        async {
            return! httpClient.deleteAsync("/api/service/{id}/vms/{vmid}/ips/{ipid}")
        }

    /// GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries
    member this.GetRdns() =
        async {
            return! httpClient.getAsync("/api/service/{id}/vms/{vmid}/rdns")
        }

    /// POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries
    member this.UpdateRdns() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/rdns")
        }

    /// POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network
    member this.RebuildNetwork() =
        async {
            return! httpClient.postAsync("/api/service/{id}/vms/{vmid}/rebuild_network")
        }

