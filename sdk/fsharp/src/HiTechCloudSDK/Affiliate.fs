namespace HiTechCloud.SDK

/// Affiliate: affiliate program management
type AffiliateResource(httpClient: HttpClient) =

    /// GET /api/affiliates/summary - Get Affiliate summary
    member this.GetSummary() =
        async {
            return! httpClient.getAsync("/api/affiliates/summary")
        }

    /// GET /api/affiliates/campaigns - Get Affiliate campaigns
    member this.ListCampaigns() =
        async {
            return! httpClient.getAsync("/api/affiliates/campaigns")
        }

    /// GET /api/affiliates/commissions - Get Affiliate commissions
    member this.ListCommissions() =
        async {
            return! httpClient.getAsync("/api/affiliates/commissions")
        }

    /// GET /api/affiliates/payouts - Get Affiliate payouts
    member this.ListPayouts() =
        async {
            return! httpClient.getAsync("/api/affiliates/payouts")
        }

    /// GET /api/affiliates/vouchers - Get Affiliate vouchers
    member this.ListVouchers() =
        async {
            return! httpClient.getAsync("/api/affiliates/vouchers")
        }

    /// GET /api/affiliates/commissionplans - Get Affiliate commission plans
    member this.ListCommissionPlans() =
        async {
            return! httpClient.getAsync("/api/affiliates/commissionplans")
        }

