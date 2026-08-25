namespace HiTechCloud.SDK

/// DNS: zones and records management for services
type DnsResource(httpClient: HttpClient) =

    /// GET /api/dns - List all DNS zones
    member this.List() =
        async {
            return! httpClient.getAsync("/api/dns")
        }

    /// GET /api/service/{service_id}/dns - List DNS zones for service
    member this.ListForService() =
        async {
            return! httpClient.getAsync("/api/service/{service_id}/dns")
        }

    /// POST /api/service/{service_id}/dns - Create DNS zone
    member this.AddZone() =
        async {
            return! httpClient.postAsync("/api/service/{service_id}/dns")
        }

    /// GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details
    member this.GetZone() =
        async {
            return! httpClient.getAsync("/api/service/{service_id}/dns/{zone_id}")
        }

    /// DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone
    member this.DeleteZone() =
        async {
            return! httpClient.deleteAsync("/api/service/{service_id}/dns/{zone_id}")
        }

    /// POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record
    member this.AddRecord() =
        async {
            return! httpClient.postAsync("/api/service/{service_id}/dns/{zone_id}/records")
        }

    /// PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record
    member this.EditRecord() =
        async {
            return! httpClient.putAsync("/api/service/{service_id}/dns/{zone_id}/records/{record_id}")
        }

    /// DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record
    member this.DeleteRecord() =
        async {
            return! httpClient.deleteAsync("/api/service/{service_id}/dns/{zone_id}/records/{record_id}")
        }

