import Foundation

/// Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates
public class PartnerResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/partner - Get partner info
    public func getPartnerInfo(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner", params: params)
    }

    /// POST /api/partner/apply - Apply to partner program
    public func apply(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/partner/apply", params: params)
    }

    /// GET /api/partner/tiers - List partner tiers
    public func listTiers(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/tiers", params: params)
    }

    /// GET /api/partner/pricing - Get partner pricing
    public func getPricing(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/pricing", params: params)
    }

    /// GET /api/partner/customers - List customers
    public func listCustomers(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/customers", params: params)
    }

    /// GET /api/partner/earnings - Get earnings
    public func getEarnings(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/earnings", params: params)
    }

    /// GET /api/partner/wallet - Get wallet balance
    public func getWallet(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/wallet", params: params)
    }

    /// GET /api/partner/payouts - List payouts
    public func listPayouts(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/payouts", params: params)
    }

    /// POST /api/partner/payouts - Request payout
    public func requestPayout(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/partner/payouts", params: params)
    }

    /// GET /api/partner/leads - List leads
    public func listLeads(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/leads", params: params)
    }

    /// POST /api/partner/leads - Create lead
    public func createLead(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/partner/leads", params: params)
    }

    /// GET /api/partner/referral - Get referral info
    public func getReferral(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/referral", params: params)
    }

    /// GET /api/partner/rates - Get exchange rates
    public func getRates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/partner/rates", params: params)
    }

}
