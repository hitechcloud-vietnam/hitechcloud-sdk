#!/usr/bin/env bash
# Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/reinstall/templates - List OS templates and recipes
list-reinstall-templates() {
    hc_get "/api/service/{id}/reinstall/templates" "$@"
}

# POST /api/service/{id}/diag/cancel - Cancel diagnostics operation
cancel-diagnostics() {
    hc_post "/api/service/{id}/diag/cancel" "$@"
}

# GET /api/service/{id}/diag/templates - List diagnostics templates
list-diagnostics-templates() {
    hc_get "/api/service/{id}/diag/templates" "$@"
}

# GET /api/service/{id}/diag - Show diagnostic operation status
get-diagnostics-status() {
    hc_get "/api/service/{id}/diag" "$@"
}

# POST /api/service/{id}/diag - Start new diagnostic operation
run-diagnostics() {
    hc_post "/api/service/{id}/diag" "$@"
}

# GET /api/service/{id}/rescue/templates - List rescue templates
list-rescue-templates() {
    hc_get "/api/service/{id}/rescue/templates" "$@"
}

# GET /api/service/{id}/rescue - Show rescue operation status
get-rescue-status() {
    hc_get "/api/service/{id}/rescue" "$@"
}

# POST /api/service/{id}/rescue - Start rescue operation
rescue() {
    hc_post "/api/service/{id}/rescue" "$@"
}

# POST /api/service/{id}/rescue/cancel - Cancel rescue operation
cancel-rescue() {
    hc_post "/api/service/{id}/rescue/cancel" "$@"
}

# GET /api/service/{id}/info - Get server hardware and OS details
get-server-info() {
    hc_get "/api/service/{id}/info" "$@"
}

# POST /api/service/{id}/hostname - Update server hostname
update-hostname() {
    hc_post "/api/service/{id}/hostname" "$@"
}

# GET /api/service/{id}/ips - List server IPs
list-ips() {
    hc_get "/api/service/{id}/ips" "$@"
}

# POST /api/service/{id}/ips - Add new IP to server
add-ip() {
    hc_post "/api/service/{id}/ips" "$@"
}

# GET /api/service/{id}/vlans - List available VLANs
list-vlans() {
    hc_get "/api/service/{id}/vlans" "$@"
}

# GET /api/service/{id}/ips/{ip} - Get IP details
get-ip-details() {
    hc_get "/api/service/{id}/ips/{ip}" "$@"
}

# PUT /api/service/{id}/ips/{ip} - Edit IP
edit-ip() {
    hc_put "/api/service/{id}/ips/{ip}" "$@"
}

# GET /api/service/{id}/reinstall - Return installation options
get-reinstall-details() {
    hc_get "/api/service/{id}/reinstall" "$@"
}

# POST /api/service/{id}/reinstall - Reinstall server
reinstall() {
    hc_post "/api/service/{id}/reinstall" "$@"
}

# GET /api/service/{id}/status - Return server power status
get-status() {
    hc_get "/api/service/{id}/status" "$@"
}

# POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)
power-action() {
    hc_post "/api/service/{id}/power/{action}" "$@"
}

# GET /api/serverstock - List servers in stock
list-servers-in-stock() {
    hc_get "/api/serverstock" "$@"
}

