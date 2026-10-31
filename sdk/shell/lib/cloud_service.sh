#!/usr/bin/env bash
# Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown
shutdown-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/shutdown" "$@"
}

# POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power
reset-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/reset" "$@"
}

# POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname
change-hostname() {
    hc_post "/api/service/{id}/vms/{vmid}/hostname" "$@"
}

# GET /api/service/{id}/vms/{vmid}/ippool - List IP pools
list-ip-pools() {
    hc_get "/api/service/{id}/vms/{vmid}/ippool" "$@"
}

# POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP
allocate-ip() {
    hc_post "/api/service/{id}/vms/{vmid}/ippool/{pool}" "$@"
}

# GET /api/service/{id}/networks - List available networks
list-networks() {
    hc_get "/api/service/{id}/networks" "$@"
}

# POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface
add-interface() {
    hc_post "/api/service/{id}/vms/{vmid}/interfaces" "$@"
}

# GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details
get-interface() {
    hc_get "/api/service/{id}/vms/{vmid}/interfaces/{iface}" "$@"
}

# PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface
update-interface() {
    hc_put "/api/service/{id}/vms/{vmid}/interfaces/{iface}" "$@"
}

# DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface
remove-interface() {
    hc_delete "/api/service/{id}/vms/{vmid}/interfaces/{iface}" "$@"
}

