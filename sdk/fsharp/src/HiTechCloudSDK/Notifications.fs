namespace HiTechCloud.SDK

/// Notifications: manage notification preferences
type NotificationsResource(httpClient: HttpClient) =

    /// GET /api/notifications - List all notifications
    member this.List() =
        async {
            return! httpClient.getAsync("/api/notifications")
        }

    /// GET /api/notifications/new - Return only new portal notifications
    member this.ListNew() =
        async {
            return! httpClient.getAsync("/api/notifications/new")
        }

    /// PUT /api/notifications/{id}/ack - Mark notification as read
    member this.Acknowledge() =
        async {
            return! httpClient.putAsync("/api/notifications/{id}/ack")
        }

