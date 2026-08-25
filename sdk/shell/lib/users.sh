#!/usr/bin/env bash
# User Profile: view/update account details, logs
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/details - Return registration details for my account
get-details() {
    hc_get "/api/details" "$@"
}

# PUT /api/details - Update registration details
update-details() {
    hc_put "/api/details" "$@"
}

# GET /api/logs - Returns logs from history
get-logs() {
    hc_get "/api/logs" "$@"
}

