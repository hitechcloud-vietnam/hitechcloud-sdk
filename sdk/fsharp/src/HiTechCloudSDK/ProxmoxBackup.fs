namespace HiTechCloud.SDK

/// Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token
type ProxmoxBackupResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/pbs - Get backup connection info
    member this.GetConnectionInfo() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pbs")
        }

    /// GET /api/service/{id}/pbs/credentials - Get backup credentials
    member this.GetCredentials() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pbs/credentials")
        }

    /// GET /api/service/{id}/pbs/usage - Get backup usage
    member this.GetUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pbs/usage")
        }

    /// GET /api/service/{id}/pbs/metrics - Get backup metrics
    member this.GetMetrics() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pbs/metrics")
        }

    /// GET /api/service/{id}/pbs/snapshots - List snapshots
    member this.ListSnapshots() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pbs/snapshots")
        }

    /// GET /api/service/{id}/pbs/groups - List backup groups
    member this.ListGroups() =
        async {
            return! httpClient.getAsync("/api/service/{id}/pbs/groups")
        }

    /// POST /api/service/{id}/pbs/password - Change backup password
    member this.ChangePassword() =
        async {
            return! httpClient.postAsync("/api/service/{id}/pbs/password")
        }

    /// POST /api/service/{id}/pbs/token - Rotate API token
    member this.RotateToken() =
        async {
            return! httpClient.postAsync("/api/service/{id}/pbs/token")
        }

    /// DELETE /api/service/{id}/pbs/token - Revoke API token
    member this.RevokeToken() =
        async {
            return! httpClient.deleteAsync("/api/service/{id}/pbs/token")
        }

