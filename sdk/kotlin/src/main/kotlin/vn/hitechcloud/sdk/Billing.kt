package vn.hitechcloud.sdk

/** Billing & Contracts: balance, invoices, payment methods */
class BillingResource(private val httpClient: HttpClient) {
    /** GET /api/balance - Get account balance and credit */
    fun getBalance(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/balance", params)
    }

    /** GET /api/invoice - List all invoices */
    fun listInvoices(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/invoice", params)
    }

    /** GET /api/invoice/{id} - Get invoice details */
    fun getInvoice(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/invoice/{id}", params)
    }

    /** POST /api/invoice/{id}/credit - Apply account credit to invoice */
    fun applyCredit(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.post("/api/invoice/{id}/credit", params)
    }

    /** GET /api/payment - List available payment methods */
    fun getPaymentMethods(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/payment", params)
    }

    /** GET /api/payment/fees - List payment methods with fees */
    fun getPaymentFees(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/payment/fees", params)
    }

}
