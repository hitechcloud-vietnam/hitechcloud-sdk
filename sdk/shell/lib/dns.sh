#!/usr/bin/env bash
# DNS: zones and records management for services
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/dns - List all DNS zones
list() {
    hc_get "/api/dns" "$@"
}

# GET /api/service/{service_id}/dns - List DNS zones for service
list-for-service() {
    hc_get "/api/service/{service_id}/dns" "$@"
}

# POST /api/service/{service_id}/dns - Create DNS zone
add-zone() {
    hc_post "/api/service/{service_id}/dns" "$@"
}

# GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details
get-zone() {
    hc_get "/api/service/{service_id}/dns/{zone_id}" "$@"
}

# DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone
delete-zone() {
    hc_delete "/api/service/{service_id}/dns/{zone_id}" "$@"
}

# POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record
add-record() {
    hc_post "/api/service/{service_id}/dns/{zone_id}/records" "$@"
}

# PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record
edit-record() {
    hc_put "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" "$@"
}

# DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record
delete-record() {
    hc_delete "/api/service/{service_id}/dns/{zone_id}/records/{record_id}" "$@"
}

