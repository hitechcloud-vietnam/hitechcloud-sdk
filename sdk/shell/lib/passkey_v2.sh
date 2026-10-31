#!/usr/bin/env bash
# PasskeyV2: passkey-based MFA management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status
get-mfa-status() {
    hc_get "/api/passkeyv2/status/{user_type}/{user_id}" "$@"
}

# GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials
list-credentials() {
    hc_get "/api/passkeyv2/credentials/{user_type}/{user_id}" "$@"
}

# POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential
delete-credential() {
    hc_post "/api/passkeyv2/credentials/{user_type}/{user_id}/delete" "$@"
}

# POST /api/passkeyv2/email_otp/send - Send email OTP
send-email-otp() {
    hc_post "/api/passkeyv2/email_otp/send" "$@"
}

# POST /api/passkeyv2/email_otp/verify - Verify email OTP
verify-email-otp() {
    hc_post "/api/passkeyv2/email_otp/verify" "$@"
}

# POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA
disable-mfa() {
    hc_post "/api/passkeyv2/disable/{user_type}/{user_id}" "$@"
}

