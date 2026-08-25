namespace HiTechCloud.SDK

/// AffiliatesAdvanced: advanced affiliate management with client_id
type AffiliatesAdvancedResource(httpClient: HttpClient) =

    /// GET /api/affiliates_adv/{client_id}/info - Get affiliate account info
    member this.GetInfo() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/info")
        }

    /// GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats
    member this.GetStats() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/stats")
        }

    /// GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans
    member this.GetCommissionPlans() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/commission-plans")
        }

    /// GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers
    member this.GetVouchers() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/vouchers")
        }

    /// GET /api/affiliates_adv/{client_id}/commissions - Get commissions
    member this.GetCommissions() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/commissions")
        }

    /// GET /api/affiliates_adv/{client_id}/referrals - Get referred clients
    member this.GetReferrals() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/referrals")
        }

    /// GET /api/affiliates_adv/{client_id}/payouts - Get payout history
    member this.GetPayouts() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/payouts")
        }

    /// GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns
    member this.GetCampaigns() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/campaigns")
        }

    /// GET /api/affiliates_adv/{client_id}/audit - Get activity log
    member this.GetAuditLog() =
        async {
            return! httpClient.getAsync("/api/affiliates_adv/{client_id}/audit")
        }

    /// POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account
    member this.Activate() =
        async {
            return! httpClient.postAsync("/api/affiliates_adv/{client_id}/activate")
        }

    /// POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan
    member this.SetCommissionPlan() =
        async {
            return! httpClient.postAsync("/api/affiliates_adv/{client_id}/commission-plan/{commission_id}")
        }

    /// POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher
    member this.CreateVoucher() =
        async {
            return! httpClient.postAsync("/api/affiliates_adv/{client_id}/vouchers/{plan_id}")
        }

    /// DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher
    member this.DeleteVoucher() =
        async {
            return! httpClient.deleteAsync("/api/affiliates_adv/{client_id}/vouchers/{voucher_id}")
        }

    /// POST /api/affiliates_adv/{client_id}/landing-page - Set landing page
    member this.SetLandingPage() =
        async {
            return! httpClient.postAsync("/api/affiliates_adv/{client_id}/landing-page")
        }

