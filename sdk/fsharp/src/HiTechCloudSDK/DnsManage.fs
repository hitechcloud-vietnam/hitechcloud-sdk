namespace HiTechCloud.SDK

/// DNS Manage: domain DNS records, DNSSEC, nameserver registration
type DnsManageResource(httpClient: HttpClient) =

    /// GET /api/domain/{id}/dns - List DNS records
    member this.GetRecords() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/dns")
        }

    /// POST /api/domain/{id}/dns - Create DNS record
    member this.CreateRecord() =
        async {
            return! httpClient.postAsync("/api/domain/{id}/dns")
        }

    /// PUT /api/domain/{id}/dns/{index} - Update DNS record
    member this.UpdateRecord() =
        async {
            return! httpClient.putAsync("/api/domain/{id}/dns/{index}")
        }

    /// DELETE /api/domain/{id}/dns/{index} - Remove DNS record
    member this.DeleteRecord() =
        async {
            return! httpClient.deleteAsync("/api/domain/{id}/dns/{index}")
        }

    /// GET /api/domain/{id}/dns/types - List supported record types
    member this.GetRecordTypes() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/dns/types")
        }

    /// GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags
    member this.GetDnssecFlags() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/dnssec/flags")
        }

    /// GET /api/domain/{id}/dnssec - Get DNSSEC records
    member this.GetDnssecRecords() =
        async {
            return! httpClient.getAsync("/api/domain/{id}/dnssec")
        }

    /// POST /api/domain/{id}/dnssec - Create DNSSEC record
    member this.CreateDnssecRecord() =
        async {
            return! httpClient.postAsync("/api/domain/{id}/dnssec")
        }

    /// DELETE /api/domain/{id}/dnssec - Remove DNSSEC record
    member this.DeleteDnssecRecord() =
        async {
            return! httpClient.deleteAsync("/api/domain/{id}/dnssec")
        }

    /// POST /api/domain/{id}/reg - Register domain nameserver
    member this.RegisterNameserver() =
        async {
            return! httpClient.postAsync("/api/domain/{id}/reg")
        }

