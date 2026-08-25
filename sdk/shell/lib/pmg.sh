#!/usr/bin/env bash
# HiTechCloudPMG: mail filtering configuration and management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/htcpmg/config - Get mail filtering configuration
get-config() {
    hc_get "/api/service/{id}/htcpmg/config" "$@"
}

# POST /api/service/{id}/htcpmg/domains - Add a domain
add-domain() {
    hc_post "/api/service/{id}/htcpmg/domains" "$@"
}

# POST /api/service/{id}/htcpmg/transport - Set target mail server
set-transport() {
    hc_post "/api/service/{id}/htcpmg/transport" "$@"
}

# GET /api/service/{id}/htcpmg/stats - Get mail statistics
get-stats() {
    hc_get "/api/service/{id}/htcpmg/stats" "$@"
}

