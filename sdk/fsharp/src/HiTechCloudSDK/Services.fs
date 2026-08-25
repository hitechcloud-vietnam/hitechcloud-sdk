namespace HiTechCloud.SDK

/// Services: list, details, cancel, renew, billing cycle
type ServicesResource(httpClient: HttpClient) =

    /// GET /api/service - List all services
    member this.List() =
        async {
            return! httpClient.getAsync("/api/service")
        }

    /// GET /api/service/{id} - Return service details
    member this.Get() =
        async {
            return! httpClient.getAsync("/api/service/{id}")
        }

    /// GET /api/service/{id}/methods - List methods available for service
    member this.ListMethods() =
        async {
            return! httpClient.getAsync("/api/service/{id}/methods")
        }

    /// POST /api/service/{id}/cancel - Request service cancellation
    member this.Cancel() =
        async {
            return! httpClient.postAsync("/api/service/{id}/cancel")
        }

    /// GET /api/service/{id}/label - Show current service label
    member this.GetLabel() =
        async {
            return! httpClient.getAsync("/api/service/{id}/label")
        }

    /// POST /api/service/{id}/label - Set new custom label
    member this.SetLabel() =
        async {
            return! httpClient.postAsync("/api/service/{id}/label")
        }

    /// POST /api/service/{id}/renew - Generate renewal invoice
    member this.Renew() =
        async {
            return! httpClient.postAsync("/api/service/{id}/renew")
        }

    /// GET /api/service/{id}/cycle - Get billing cycle options
    member this.ListBillingCycles() =
        async {
            return! httpClient.getAsync("/api/service/{id}/cycle")
        }

    /// POST /api/service/{id}/cycle - Change billing cycle
    member this.ChangeBillingCycle() =
        async {
            return! httpClient.postAsync("/api/service/{id}/cycle")
        }

