#!/usr/bin/env bash
# Affiliate: affiliate program management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/affiliates/summary - Get Affiliate summary
get-summary() {
    hc_get "/api/affiliates/summary" "$@"
}

# GET /api/affiliates/campaigns - Get Affiliate campaigns
list-campaigns() {
    hc_get "/api/affiliates/campaigns" "$@"
}

# GET /api/affiliates/commissions - Get Affiliate commissions
list-commissions() {
    hc_get "/api/affiliates/commissions" "$@"
}

# GET /api/affiliates/payouts - Get Affiliate payouts
list-payouts() {
    hc_get "/api/affiliates/payouts" "$@"
}

# GET /api/affiliates/vouchers - Get Affiliate vouchers
list-vouchers() {
    hc_get "/api/affiliates/vouchers" "$@"
}

# GET /api/affiliates/commissionplans - Get Affiliate commission plans
list-commission-plans() {
    hc_get "/api/affiliates/commissionplans" "$@"
}

