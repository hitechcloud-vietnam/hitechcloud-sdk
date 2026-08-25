#!/usr/bin/env bash
# Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/pbs - Get backup connection info
get-connection-info() {
    hc_get "/api/service/{id}/pbs" "$@"
}

# GET /api/service/{id}/pbs/credentials - Get backup credentials
get-credentials() {
    hc_get "/api/service/{id}/pbs/credentials" "$@"
}

# GET /api/service/{id}/pbs/usage - Get backup usage
get-usage() {
    hc_get "/api/service/{id}/pbs/usage" "$@"
}

# GET /api/service/{id}/pbs/metrics - Get backup metrics
get-metrics() {
    hc_get "/api/service/{id}/pbs/metrics" "$@"
}

# GET /api/service/{id}/pbs/snapshots - List snapshots
list-snapshots() {
    hc_get "/api/service/{id}/pbs/snapshots" "$@"
}

# GET /api/service/{id}/pbs/groups - List backup groups
list-groups() {
    hc_get "/api/service/{id}/pbs/groups" "$@"
}

# POST /api/service/{id}/pbs/password - Change backup password
change-password() {
    hc_post "/api/service/{id}/pbs/password" "$@"
}

# POST /api/service/{id}/pbs/token - Rotate API token
rotate-token() {
    hc_post "/api/service/{id}/pbs/token" "$@"
}

# DELETE /api/service/{id}/pbs/token - Revoke API token
revoke-token() {
    hc_delete "/api/service/{id}/pbs/token" "$@"
}

