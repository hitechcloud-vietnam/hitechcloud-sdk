namespace HiTechCloud.SDK

/// Network Services: IP addresses and reverse DNS for services
type NetworkServicesResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/ip - List Service IP Addresses
    member this.ListIps() =
        async {
            return! httpClient.getAsync("/api/service/{id}/ip")
        }

    /// GET /api/service/{id}/rdns - Get reverse DNS entries
    member this.GetRdns() =
        async {
            return! httpClient.getAsync("/api/service/{id}/rdns")
        }

    /// POST /api/service/{id}/rdns - Update reverse DNS entries
    member this.UpdateRdns() =
        async {
            return! httpClient.postAsync("/api/service/{id}/rdns")
        }

