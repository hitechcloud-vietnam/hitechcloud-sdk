namespace HiTechCloud.SDK

/// WillExpired: expiring services and domains management
type WillExpiredResource(httpClient: HttpClient) =

    /// GET /api/willexpired - List expiring services and domains
    member this.ListExpiring() =
        async {
            return! httpClient.getAsync("/api/willexpired")
        }

    /// GET /api/willexpired/summary - Expiring summary
    member this.GetSummary() =
        async {
            return! httpClient.getAsync("/api/willexpired/summary")
        }

    /// GET /api/willexpired/config - Module configuration
    member this.GetConfig() =
        async {
            return! httpClient.getAsync("/api/willexpired/config")
        }

    /// GET /api/willexpired/invoices - Open renewal invoices
    member this.ListOpenInvoices() =
        async {
            return! httpClient.getAsync("/api/willexpired/invoices")
        }

    /// GET /api/willexpired/requests - Renewal request log
    member this.ListRequests() =
        async {
            return! httpClient.getAsync("/api/willexpired/requests")
        }

    /// GET /api/willexpired/export - Export all expiring items
    member this.ExportAll() =
        async {
            return! httpClient.getAsync("/api/willexpired/export")
        }

    /// GET /api/willexpired/{type}/{id} - Get item detail
    member this.GetItem() =
        async {
            return! httpClient.getAsync("/api/willexpired/{type}/{id}")
        }

    /// POST /api/willexpired/{type}/{id}/renew - Renew item
    member this.Renew() =
        async {
            return! httpClient.postAsync("/api/willexpired/{type}/{id}/renew")
        }

    /// GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status
    member this.GetAutorenew() =
        async {
            return! httpClient.getAsync("/api/willexpired/{type}/{id}/autorenew")
        }

    /// PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew
    member this.SetAutorenew() =
        async {
            return! httpClient.putAsync("/api/willexpired/{type}/{id}/autorenew")
        }

