#!/usr/bin/env bash
# Services: list, details, cancel, renew, billing cycle
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service - List all services
list() {
    hc_get "/api/service" "$@"
}

# GET /api/service/{id} - Return service details
get() {
    hc_get "/api/service/{id}" "$@"
}

# GET /api/service/{id}/methods - List methods available for service
list-methods() {
    hc_get "/api/service/{id}/methods" "$@"
}

# POST /api/service/{id}/cancel - Request service cancellation
cancel() {
    hc_post "/api/service/{id}/cancel" "$@"
}

# GET /api/service/{id}/label - Show current service label
get-label() {
    hc_get "/api/service/{id}/label" "$@"
}

# POST /api/service/{id}/label - Set new custom label
set-label() {
    hc_post "/api/service/{id}/label" "$@"
}

# POST /api/service/{id}/renew - Generate renewal invoice
renew() {
    hc_post "/api/service/{id}/renew" "$@"
}

# GET /api/service/{id}/cycle - Get billing cycle options
list-billing-cycles() {
    hc_get "/api/service/{id}/cycle" "$@"
}

# POST /api/service/{id}/cycle - Change billing cycle
change-billing-cycle() {
    hc_post "/api/service/{id}/cycle" "$@"
}

