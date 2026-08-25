#!/usr/bin/env bash
# Cloud GPU: GPU instance management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# PUT /api/service/{id}/vms/reboot - Reboot virtual server
reboot() {
    hc_put "/api/service/{id}/vms/reboot" "$@"
}

# PUT /api/service/{id}/vms/stop - Stop virtual server
stop() {
    hc_put "/api/service/{id}/vms/stop" "$@"
}

# PUT /api/service/{id}/vms/start - Start virtual server
start() {
    hc_put "/api/service/{id}/vms/start" "$@"
}

# GET /api/service/{id}/vms/firewall - Get firewall rules
get-firewall-rules() {
    hc_get "/api/service/{id}/vms/firewall" "$@"
}

# POST /api/service/{id}/vms/firewall - Add firewall rules
add-firewall-rules() {
    hc_post "/api/service/{id}/vms/firewall" "$@"
}

# DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule
remove-firewall-rule() {
    hc_delete "/api/service/{id}/vms/firewall/{position}" "$@"
}

