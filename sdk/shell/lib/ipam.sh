#!/usr/bin/env bash
# HiTechCloudIPAM: IP addresses, subnets, reverse DNS
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/htcipam/ips - List IP addresses
list-ips() {
    hc_get "/api/service/{id}/htcipam/ips" "$@"
}

# GET /api/service/{id}/htcipam/subnets - List subnets
list-subnets() {
    hc_get "/api/service/{id}/htcipam/subnets" "$@"
}

# GET /api/service/{id}/htcipam/rdns - List reverse DNS records
list-rdns() {
    hc_get "/api/service/{id}/htcipam/rdns" "$@"
}

# POST /api/service/{id}/htcipam/rdns - Set reverse DNS
set-rdns() {
    hc_post "/api/service/{id}/htcipam/rdns" "$@"
}

