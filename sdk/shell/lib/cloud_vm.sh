#!/usr/bin/env bash
# Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/upgrade - List resource upgrade options
get-upgrade-options() {
    hc_get "/api/service/{id}/upgrade" "$@"
}

# POST /api/service/{id}/upgrade - Estimate or request upgrade
request-upgrade() {
    hc_post "/api/service/{id}/upgrade" "$@"
}

# GET /api/service/{id}/resources - Show available and used resources
get-resources() {
    hc_get "/api/service/{id}/resources" "$@"
}

# GET /api/service/{id}/templates/{vmid} - List rebuild templates
list-rebuild-templates() {
    hc_get "/api/service/{id}/templates/{vmid}" "$@"
}

# GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph
get-memory-usage() {
    hc_get "/api/service/{id}/vms/{vmid}/usage/memory" "$@"
}

# GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM
list-iso-images() {
    hc_get "/api/service/{id}/vms/{vmid}/images" "$@"
}

# POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image
mount-iso() {
    hc_post "/api/service/{id}/vms/{vmid}/images" "$@"
}

# POST /api/service/{id}/vms/{vmid}/boot - Change boot order
set-boot-order() {
    hc_post "/api/service/{id}/vms/{vmid}/boot" "$@"
}

# POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE
enable-pxe() {
    hc_post "/api/service/{id}/vms/{vmid}/tuntap" "$@"
}

