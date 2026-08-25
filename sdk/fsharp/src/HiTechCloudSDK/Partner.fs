namespace HiTechCloud.SDK

/// Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates
type PartnerResource(httpClient: HttpClient) =

    /// GET /api/partner - Get partner info
    member this.GetPartnerInfo() =
        async {
            return! httpClient.getAsync("/api/partner")
        }

    /// POST /api/partner/apply - Apply to partner program
    member this.Apply() =
        async {
            return! httpClient.postAsync("/api/partner/apply")
        }

    /// GET /api/partner/tiers - List partner tiers
    member this.ListTiers() =
        async {
            return! httpClient.getAsync("/api/partner/tiers")
        }

    /// GET /api/partner/pricing - Get partner pricing
    member this.GetPricing() =
        async {
            return! httpClient.getAsync("/api/partner/pricing")
        }

    /// GET /api/partner/customers - List customers
    member this.ListCustomers() =
        async {
            return! httpClient.getAsync("/api/partner/customers")
        }

    /// GET /api/partner/earnings - Get earnings
    member this.GetEarnings() =
        async {
            return! httpClient.getAsync("/api/partner/earnings")
        }

    /// GET /api/partner/wallet - Get wallet balance
    member this.GetWallet() =
        async {
            return! httpClient.getAsync("/api/partner/wallet")
        }

    /// GET /api/partner/payouts - List payouts
    member this.ListPayouts() =
        async {
            return! httpClient.getAsync("/api/partner/payouts")
        }

    /// POST /api/partner/payouts - Request payout
    member this.RequestPayout() =
        async {
            return! httpClient.postAsync("/api/partner/payouts")
        }

    /// GET /api/partner/leads - List leads
    member this.ListLeads() =
        async {
            return! httpClient.getAsync("/api/partner/leads")
        }

    /// POST /api/partner/leads - Create lead
    member this.CreateLead() =
        async {
            return! httpClient.postAsync("/api/partner/leads")
        }

    /// GET /api/partner/referral - Get referral info
    member this.GetReferral() =
        async {
            return! httpClient.getAsync("/api/partner/referral")
        }

    /// GET /api/partner/rates - Get exchange rates
    member this.GetRates() =
        async {
            return! httpClient.getAsync("/api/partner/rates")
        }

