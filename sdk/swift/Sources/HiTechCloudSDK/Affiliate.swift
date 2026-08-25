import Foundation

/// Affiliate: affiliate program management
public class AffiliateResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/affiliates/summary - Get Affiliate summary
    public func getSummary(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates/summary", params: params)
    }

    /// GET /api/affiliates/campaigns - Get Affiliate campaigns
    public func listCampaigns(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates/campaigns", params: params)
    }

    /// GET /api/affiliates/commissions - Get Affiliate commissions
    public func listCommissions(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates/commissions", params: params)
    }

    /// GET /api/affiliates/payouts - Get Affiliate payouts
    public func listPayouts(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates/payouts", params: params)
    }

    /// GET /api/affiliates/vouchers - Get Affiliate vouchers
    public func listVouchers(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates/vouchers", params: params)
    }

    /// GET /api/affiliates/commissionplans - Get Affiliate commission plans
    public func listCommissionPlans(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/affiliates/commissionplans", params: params)
    }

}
