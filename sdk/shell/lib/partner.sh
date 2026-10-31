#!/usr/bin/env bash
# Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/partner - Get partner info
get-partner-info() {
    hc_get "/api/partner" "$@"
}

# POST /api/partner/apply - Apply to partner program
apply() {
    hc_post "/api/partner/apply" "$@"
}

# GET /api/partner/tiers - List partner tiers
list-tiers() {
    hc_get "/api/partner/tiers" "$@"
}

# GET /api/partner/pricing - Get partner pricing
get-pricing() {
    hc_get "/api/partner/pricing" "$@"
}

# GET /api/partner/customers - List customers
list-customers() {
    hc_get "/api/partner/customers" "$@"
}

# GET /api/partner/earnings - Get earnings
get-earnings() {
    hc_get "/api/partner/earnings" "$@"
}

# GET /api/partner/wallet - Get wallet balance
get-wallet() {
    hc_get "/api/partner/wallet" "$@"
}

# GET /api/partner/payouts - List payouts
list-payouts() {
    hc_get "/api/partner/payouts" "$@"
}

# POST /api/partner/payouts - Request payout
request-payout() {
    hc_post "/api/partner/payouts" "$@"
}

# GET /api/partner/leads - List leads
list-leads() {
    hc_get "/api/partner/leads" "$@"
}

# POST /api/partner/leads - Create lead
create-lead() {
    hc_post "/api/partner/leads" "$@"
}

# GET /api/partner/referral - Get referral info
get-referral() {
    hc_get "/api/partner/referral" "$@"
}

# GET /api/partner/rates - Get exchange rates
get-rates() {
    hc_get "/api/partner/rates" "$@"
}

