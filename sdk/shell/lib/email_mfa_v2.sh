#!/usr/bin/env bash
# EmailMfaV2: email-based MFA management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status
get-mfa-status() {
    hc_get "/api/email_mfa_v2/status/{user_type}/{user_id}" "$@"
}

# POST /api/email_mfa_v2/send - Send one-time code
send-code() {
    hc_post "/api/email_mfa_v2/send" "$@"
}

# POST /api/email_mfa_v2/verify - Verify one-time code
verify-code() {
    hc_post "/api/email_mfa_v2/verify" "$@"
}

# GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes
list-active-codes() {
    hc_get "/api/email_mfa_v2/list/{user_type}/{user_id}" "$@"
}

# POST /api/email_mfa_v2/revokeall - Revoke all active codes
revoke-all-codes() {
    hc_post "/api/email_mfa_v2/revokeall" "$@"
}

# POST /api/email_mfa_v2/disable - Disable MFA entirely
disable-mfa() {
    hc_post "/api/email_mfa_v2/disable" "$@"
}

