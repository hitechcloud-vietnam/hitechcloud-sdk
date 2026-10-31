#!/usr/bin/env bash
# HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/htcpve/status - Get machine status
get-status() {
    hc_get "/api/service/{id}/htcpve/status" "$@"
}

# POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)
power-action() {
    hc_post "/api/service/{id}/htcpve/power" "$@"
}

# GET /api/service/{id}/htcpve/vms - List machines
list-vms() {
    hc_get "/api/service/{id}/htcpve/vms" "$@"
}

# GET /api/service/{id}/htcpve/ips - List addresses
list-ips() {
    hc_get "/api/service/{id}/htcpve/ips" "$@"
}

# POST /api/service/{id}/htcpve/rdns - Set reverse DNS
set-rdns() {
    hc_post "/api/service/{id}/htcpve/rdns" "$@"
}

# GET /api/service/{id}/htcpve/backups - List backups
list-backups() {
    hc_get "/api/service/{id}/htcpve/backups" "$@"
}

# POST /api/service/{id}/htcpve/backups - Create backup
create-backup() {
    hc_post "/api/service/{id}/htcpve/backups" "$@"
}

# GET /api/service/{id}/htcpve/snapshots - List snapshots
list-snapshots() {
    hc_get "/api/service/{id}/htcpve/snapshots" "$@"
}

# POST /api/service/{id}/htcpve/snapshots - Create snapshot
create-snapshot() {
    hc_post "/api/service/{id}/htcpve/snapshots" "$@"
}

# GET /api/service/{id}/htcpve/usage - Get bandwidth usage
get-bandwidth-usage() {
    hc_get "/api/service/{id}/htcpve/usage" "$@"
}

