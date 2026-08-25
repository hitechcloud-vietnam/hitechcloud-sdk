namespace HiTechCloud.SDK

/// HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth
type ProxmoxResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/htcpve/status - Get machine status
    member this.GetStatus() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpve/status")
        }

    /// POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)
    member this.PowerAction() =
        async {
            return! httpClient.postAsync("/api/service/{id}/htcpve/power")
        }

    /// GET /api/service/{id}/htcpve/vms - List machines
    member this.ListVms() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpve/vms")
        }

    /// GET /api/service/{id}/htcpve/ips - List addresses
    member this.ListIps() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpve/ips")
        }

    /// POST /api/service/{id}/htcpve/rdns - Set reverse DNS
    member this.SetRdns() =
        async {
            return! httpClient.postAsync("/api/service/{id}/htcpve/rdns")
        }

    /// GET /api/service/{id}/htcpve/backups - List backups
    member this.ListBackups() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpve/backups")
        }

    /// POST /api/service/{id}/htcpve/backups - Create backup
    member this.CreateBackup() =
        async {
            return! httpClient.postAsync("/api/service/{id}/htcpve/backups")
        }

    /// GET /api/service/{id}/htcpve/snapshots - List snapshots
    member this.ListSnapshots() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpve/snapshots")
        }

    /// POST /api/service/{id}/htcpve/snapshots - Create snapshot
    member this.CreateSnapshot() =
        async {
            return! httpClient.postAsync("/api/service/{id}/htcpve/snapshots")
        }

    /// GET /api/service/{id}/htcpve/usage - Get bandwidth usage
    member this.GetBandwidthUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpve/usage")
        }

