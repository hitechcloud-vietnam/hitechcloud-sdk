namespace HiTechCloud.SDK

/// HiTechCloudIPAM: IP addresses, subnets, reverse DNS
type IpamResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/htcipam/ips - List IP addresses
    member this.ListIps() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcipam/ips")
        }

    /// GET /api/service/{id}/htcipam/subnets - List subnets
    member this.ListSubnets() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcipam/subnets")
        }

    /// GET /api/service/{id}/htcipam/rdns - List reverse DNS records
    member this.ListRdns() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcipam/rdns")
        }

    /// POST /api/service/{id}/htcipam/rdns - Set reverse DNS
    member this.SetRdns() =
        async {
            return! httpClient.postAsync("/api/service/{id}/htcipam/rdns")
        }

