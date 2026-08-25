#!/usr/bin/env bash
# Billing & Contracts: balance, invoices, payment methods
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/balance - Get account balance and credit
get-balance() {
    hc_get "/api/balance" "$@"
}

# GET /api/invoice - List all invoices
list-invoices() {
    hc_get "/api/invoice" "$@"
}

# GET /api/invoice/{id} - Get invoice details
get-invoice() {
    hc_get "/api/invoice/{id}" "$@"
}

# POST /api/invoice/{id}/credit - Apply account credit to invoice
apply-credit() {
    hc_post "/api/invoice/{id}/credit" "$@"
}

# GET /api/payment - List available payment methods
get-payment-methods() {
    hc_get "/api/payment" "$@"
}

# GET /api/payment/fees - List payment methods with fees
get-payment-fees() {
    hc_get "/api/payment/fees" "$@"
}

