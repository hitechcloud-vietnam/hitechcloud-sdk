# Billing & Contracts: balance, invoices, payment methods
struct BillingResource
    http::HttpClient
end

# GET /api/balance - Get account balance and credit
function get_balance(r::BillingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/balance"; params = params)
end

# GET /api/invoice - List all invoices
function list_invoices(r::BillingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/invoice"; params = params)
end

# GET /api/invoice/{id} - Get invoice details
function get_invoice(r::BillingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/invoice/{id}"; params = params)
end

# POST /api/invoice/{id}/credit - Apply account credit to invoice
function apply_credit(r::BillingResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/invoice/{id}/credit"; params = params)
end

# GET /api/payment - List available payment methods
function get_payment_methods(r::BillingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/payment"; params = params)
end

# GET /api/payment/fees - List payment methods with fees
function get_payment_fees(r::BillingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/payment/fees"; params = params)
end
