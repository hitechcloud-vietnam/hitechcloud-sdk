#!/usr/bin/env bash
# Account Authentication: login, logout, token refresh, signup, password reset
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# POST /api/login - Authenticate and obtain access token
login() {
    hc_post "/api/login" "$@"
}

# POST /api/logout - Invalidate current access token
logout() {
    hc_post "/api/logout" "$@"
}

# POST /api/token - Generate new token using refresh token
refresh-token() {
    hc_post "/api/token" "$@"
}

# POST /api/revoke - Invalidate authorization and refresh token
revoke-token() {
    hc_post "/api/revoke" "$@"
}

# POST /api/passwordreset - Request password reset email
password-reset() {
    hc_post "/api/passwordreset" "$@"
}

# POST /api/signup - Create new account
signup() {
    hc_post "/api/signup" "$@"
}

