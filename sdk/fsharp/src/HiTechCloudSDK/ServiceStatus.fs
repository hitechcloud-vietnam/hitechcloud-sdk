namespace HiTechCloud.SDK

/// Service Status: list and manage service statuses
type ServiceStatusResource(httpClient: HttpClient) =

    /// GET /api/statuses - Returns a list of all statuses
    member this.List() =
        async {
            return! httpClient.getAsync("/api/statuses")
        }

    /// PUT /api/statuses/{id} - Returns details of status
    member this.Get() =
        async {
            return! httpClient.putAsync("/api/statuses/{id}")
        }

