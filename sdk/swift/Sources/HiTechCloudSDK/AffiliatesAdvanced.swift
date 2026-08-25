import Foundation

/// AffiliatesAdvanced: advanced affiliate management with client_id
public class AffiliatesAdvancedResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/affiliates_adv/{client_id}/info - Get affiliate account info
    public func getInfo(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/info", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats
    public func getStats(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/stats", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans
    public func getCommissionPlans(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/commission-plans", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers
    public func getVouchers(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/vouchers", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/commissions - Get commissions
    public func getCommissions(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/commissions", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/referrals - Get referred clients
    public func getReferrals(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/referrals", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/payouts - Get payout history
    public func getPayouts(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/payouts", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns
    public func getCampaigns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/campaigns", params: params)
    }

    /// GET /api/affiliates_adv/{client_id}/audit - Get activity log
    public func getAuditLog(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates_adv/{client_id}/audit", params: params)
    }

    /// POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account
    public func activate(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/affiliates_adv/{client_id}/activate", params: params)
    }

    /// POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan
    public func setCommissionPlan(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/affiliates_adv/{client_id}/commission-plan/{commission_id}", params: params)
    }

    /// POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher
    public func createVoucher(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/affiliates_adv/{client_id}/vouchers/{plan_id}", params: params)
    }

    /// DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher
    public func deleteVoucher(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.delete("/api/affiliates_adv/{client_id}/vouchers/{voucher_id}", params: params)
    }

    /// POST /api/affiliates_adv/{client_id}/landing-page - Set landing page
    public func setLandingPage(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/affiliates_adv/{client_id}/landing-page", params: params)
    }

}
