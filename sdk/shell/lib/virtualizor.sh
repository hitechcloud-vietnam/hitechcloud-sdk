#!/usr/bin/env bash
# Virtualizor: VPS management via Virtualizor panel
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server
suspend() {
    hc_post "/api/service/{id}/vms/{vmid}/suspend" "$@"
}

# POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server
unsuspend() {
    hc_post "/api/service/{id}/vms/{vmid}/unsuspend" "$@"
}

# GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates
list-rebuild-templates() {
    hc_get "/api/service/{id}/vms/{vmid}/rebuild" "$@"
}

# POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key
change-ssh-key() {
    hc_post "/api/service/{id}/vms/{vmid}/addsshkey" "$@"
}

