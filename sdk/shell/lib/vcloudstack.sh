#!/usr/bin/env bash
# vCloudStack Public Cloud: rescue, unrescue, console, usage
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode
rescue-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/rescue" "$@"
}

# POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode
unrescue-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/unrescue" "$@"
}

# GET /api/service/{id}/vms/{vmid}/console - Get VM console
get-console() {
    hc_get "/api/service/{id}/vms/{vmid}/console" "$@"
}

# GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details
get-usage() {
    hc_get "/api/service/{id}/vms/{vmid}/usage" "$@"
}

