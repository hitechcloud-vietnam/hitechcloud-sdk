namespace HiTechCloud.SDK

/// Hosting Services: reinstall, status, bandwidth, reset
type HostingResource(httpClient: HttpClient) =

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

    /// GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs
    member this.GetBandwidthGraphs() =
        async {
            return! httpClient.getAsync("/api/service/{id}/bandwidth-graphs")
        }

    /// GET /api/service/{id}/bandwidth - Return bandwidth usage and billing
    member this.GetBandwidthUsage() =
        async {
            return! httpClient.getAsync("/api/service/{id}/bandwidth")
        }

    /// POST /api/service/{id}/reset - Reset server
    member this.Reset() =
        async {
            return! httpClient.postAsync("/api/service/{id}/reset")
        }

