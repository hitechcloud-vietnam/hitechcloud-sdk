namespace HiTechCloud.SDK

/// HiTechCloudPMG: mail filtering configuration and management
type PmgResource(httpClient: HttpClient) =

    /// GET /api/service/{id}/htcpmg/config - Get mail filtering configuration
    member this.GetConfig() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpmg/config")
        }

    /// POST /api/service/{id}/htcpmg/domains - Add a domain
    member this.AddDomain() =
        async {
            return! httpClient.postAsync("/api/service/{id}/htcpmg/domains")
        }

    /// POST /api/service/{id}/htcpmg/transport - Set target mail server
    member this.SetTransport() =
        async {
            return! httpClient.postAsync("/api/service/{id}/htcpmg/transport")
        }

    /// GET /api/service/{id}/htcpmg/stats - Get mail statistics
    member this.GetStats() =
        async {
            return! httpClient.getAsync("/api/service/{id}/htcpmg/stats")
        }

