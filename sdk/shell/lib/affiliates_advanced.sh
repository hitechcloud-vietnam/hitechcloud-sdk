#!/usr/bin/env bash
# AffiliatesAdvanced: advanced affiliate management with client_id
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/affiliates_adv/{client_id}/info - Get affiliate account info
get-info() {
    hc_get "/api/affiliates_adv/{client_id}/info" "$@"
}

# GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats
get-stats() {
    hc_get "/api/affiliates_adv/{client_id}/stats" "$@"
}

# GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans
get-commission-plans() {
    hc_get "/api/affiliates_adv/{client_id}/commission-plans" "$@"
}

# GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers
get-vouchers() {
    hc_get "/api/affiliates_adv/{client_id}/vouchers" "$@"
}

# GET /api/affiliates_adv/{client_id}/commissions - Get commissions
get-commissions() {
    hc_get "/api/affiliates_adv/{client_id}/commissions" "$@"
}

# GET /api/affiliates_adv/{client_id}/referrals - Get referred clients
get-referrals() {
    hc_get "/api/affiliates_adv/{client_id}/referrals" "$@"
}

# GET /api/affiliates_adv/{client_id}/payouts - Get payout history
get-payouts() {
    hc_get "/api/affiliates_adv/{client_id}/payouts" "$@"
}

# GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns
get-campaigns() {
    hc_get "/api/affiliates_adv/{client_id}/campaigns" "$@"
}

# GET /api/affiliates_adv/{client_id}/audit - Get activity log
get-audit-log() {
    hc_get "/api/affiliates_adv/{client_id}/audit" "$@"
}

# POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account
activate() {
    hc_post "/api/affiliates_adv/{client_id}/activate" "$@"
}

# POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan
set-commission-plan() {
    hc_post "/api/affiliates_adv/{client_id}/commission-plan/{commission_id}" "$@"
}

# POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher
create-voucher() {
    hc_post "/api/affiliates_adv/{client_id}/vouchers/{plan_id}" "$@"
}

# DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher
delete-voucher() {
    hc_delete "/api/affiliates_adv/{client_id}/vouchers/{voucher_id}" "$@"
}

# POST /api/affiliates_adv/{client_id}/landing-page - Set landing page
set-landing-page() {
    hc_post "/api/affiliates_adv/{client_id}/landing-page" "$@"
}

