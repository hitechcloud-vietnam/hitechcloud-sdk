namespace HiTechCloud.SDK

/// Billing & Contracts: balance, invoices, payment methods
type BillingResource(httpClient: HttpClient) =

    /// GET /api/balance - Get account balance and credit
    member this.GetBalance() =
        async {
            return! httpClient.getAsync("/api/balance")
        }

    /// GET /api/invoice - List all invoices
    member this.ListInvoices() =
        async {
            return! httpClient.getAsync("/api/invoice")
        }

    /// GET /api/invoice/{id} - Get invoice details
    member this.GetInvoice() =
        async {
            return! httpClient.getAsync("/api/invoice/{id}")
        }

    /// POST /api/invoice/{id}/credit - Apply account credit to invoice
    member this.ApplyCredit() =
        async {
            return! httpClient.postAsync("/api/invoice/{id}/credit")
        }

    /// GET /api/payment - List available payment methods
    member this.GetPaymentMethods() =
        async {
            return! httpClient.getAsync("/api/payment")
        }

    /// GET /api/payment/fees - List payment methods with fees
    member this.GetPaymentFees() =
        async {
            return! httpClient.getAsync("/api/payment/fees")
        }

