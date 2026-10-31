#!/usr/bin/env bash
# Hosting Services: reinstall, status, bandwidth, reset
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/reinstall - Return installation options
get-reinstall-details() {
    hc_get "/api/service/{id}/reinstall" "$@"
}

# POST /api/service/{id}/reinstall - Reinstall server
reinstall() {
    hc_post "/api/service/{id}/reinstall" "$@"
}

# GET /api/service/{id}/status - Return server power status
get-status() {
    hc_get "/api/service/{id}/status" "$@"
}

# GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs
get-bandwidth-graphs() {
    hc_get "/api/service/{id}/bandwidth-graphs" "$@"
}

# GET /api/service/{id}/bandwidth - Return bandwidth usage and billing
get-bandwidth-usage() {
    hc_get "/api/service/{id}/bandwidth" "$@"
}

# POST /api/service/{id}/reset - Reset server
reset() {
    hc_post "/api/service/{id}/reset" "$@"
}

