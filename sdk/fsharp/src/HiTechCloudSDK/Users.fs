namespace HiTechCloud.SDK

/// User Profile: view/update account details, logs
type UsersResource(httpClient: HttpClient) =

    /// GET /api/details - Return registration details for my account
    member this.GetDetails() =
        async {
            return! httpClient.getAsync("/api/details")
        }

    /// PUT /api/details - Update registration details
    member this.UpdateDetails() =
        async {
            return! httpClient.putAsync("/api/details")
        }

    /// GET /api/logs - Returns logs from history
    member this.GetLogs() =
        async {
            return! httpClient.getAsync("/api/logs")
        }

