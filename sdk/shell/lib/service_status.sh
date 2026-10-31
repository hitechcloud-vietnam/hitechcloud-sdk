#!/usr/bin/env bash
# Service Status: list and manage service statuses
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/statuses - Returns a list of all statuses
list() {
    hc_get "/api/statuses" "$@"
}

# PUT /api/statuses/{id} - Returns details of status
get() {
    hc_put "/api/statuses/{id}" "$@"
}

