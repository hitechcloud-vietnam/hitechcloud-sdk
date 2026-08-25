import Foundation

/// Billing & Contracts: balance, invoices, payment methods
public class BillingResource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/balance - Get account balance and credit
    public func getBalance(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/balance", params: params)
    }

    /// GET /api/invoice - List all invoices
    public func listInvoices(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/invoice", params: params)
    }

    /// GET /api/invoice/{id} - Get invoice details
    public func getInvoice(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/invoice/{id}", params: params)
    }

    /// POST /api/invoice/{id}/credit - Apply account credit to invoice
    public func applyCredit(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.post("/api/invoice/{id}/credit", params: params)
    }

    /// GET /api/payment - List available payment methods
    public func getPaymentMethods(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/payment", params: params)
    }

    /// GET /api/payment/fees - List payment methods with fees
    public func getPaymentFees(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/payment/fees", params: params)
    }

}
