#!/usr/bin/env bash
# Network Services: IP addresses and reverse DNS for services
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/ip - List Service IP Addresses
list-ips() {
    hc_get "/api/service/{id}/ip" "$@"
}

# GET /api/service/{id}/rdns - Get reverse DNS entries
get-rdns() {
    hc_get "/api/service/{id}/rdns" "$@"
}

# POST /api/service/{id}/rdns - Update reverse DNS entries
update-rdns() {
    hc_post "/api/service/{id}/rdns" "$@"
}

