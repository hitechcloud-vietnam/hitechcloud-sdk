#!/usr/bin/env bash
# Cloud Instance: full VM lifecycle management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/vms - List virtual servers
list-vms() {
    hc_get "/api/service/{id}/vms" "$@"
}

# POST /api/service/{id}/vms - Create new virtual server
create-vm() {
    hc_post "/api/service/{id}/vms" "$@"
}

# GET /api/service/{id}/vms/{vmid} - Get VM details
get-vm() {
    hc_get "/api/service/{id}/vms/{vmid}" "$@"
}

# DELETE /api/service/{id}/vms/{vmid} - Remove virtual server
destroy-vm() {
    hc_delete "/api/service/{id}/vms/{vmid}" "$@"
}

# PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server
resize-vm() {
    hc_put "/api/service/{id}/vms/{vmid}" "$@"
}

# POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server
stop-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/stop" "$@"
}

# POST /api/service/{id}/vms/{vmid}/start - Start virtual server
start-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/start" "$@"
}

# POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server
reboot-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/reboot" "$@"
}

# POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password
reset-password() {
    hc_post "/api/service/{id}/vms/{vmid}/resetpwd" "$@"
}

# POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server
rebuild-vm() {
    hc_post "/api/service/{id}/vms/{vmid}/rebuild" "$@"
}

# GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM
list-vm-ips() {
    hc_get "/api/service/{id}/vms/{vmid}/ips" "$@"
}

# POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM
assign-ip() {
    hc_post "/api/service/{id}/vms/{vmid}/ips" "$@"
}

# GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces
list-interfaces() {
    hc_get "/api/service/{id}/vms/{vmid}/interfaces" "$@"
}

# GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph
get-cpu-usage() {
    hc_get "/api/service/{id}/vms/{vmid}/usage/cpu" "$@"
}

# GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph
get-network-usage() {
    hc_get "/api/service/{id}/vms/{vmid}/usage/net" "$@"
}

# GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph
get-disk-usage() {
    hc_get "/api/service/{id}/vms/{vmid}/usage/disk" "$@"
}

# GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM
list-disks() {
    hc_get "/api/service/{id}/vms/{vmid}/storage" "$@"
}

# PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk
resize-disk() {
    hc_put "/api/service/{id}/vms/{vmid}/storage/{diskid}" "$@"
}

# GET /api/service/{id}/images - List ISO images
list-iso-images() {
    hc_get "/api/service/{id}/images" "$@"
}

# POST /api/service/{id}/images - Add ISO image
add-iso-image() {
    hc_post "/api/service/{id}/images" "$@"
}

# GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs
list-available-ips() {
    hc_get "/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips" "$@"
}

# DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM
remove-ip() {
    hc_delete "/api/service/{id}/vms/{vmid}/ips/{ipid}" "$@"
}

# GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries
get-rdns() {
    hc_get "/api/service/{id}/vms/{vmid}/rdns" "$@"
}

# POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries
update-rdns() {
    hc_post "/api/service/{id}/vms/{vmid}/rdns" "$@"
}

# POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network
rebuild-network() {
    hc_post "/api/service/{id}/vms/{vmid}/rebuild_network" "$@"
}

