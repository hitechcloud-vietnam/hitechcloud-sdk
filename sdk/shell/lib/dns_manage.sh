#!/usr/bin/env bash
# DNS Manage: domain DNS records, DNSSEC, nameserver registration
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/domain/{id}/dns - List DNS records
get-records() {
    hc_get "/api/domain/{id}/dns" "$@"
}

# POST /api/domain/{id}/dns - Create DNS record
create-record() {
    hc_post "/api/domain/{id}/dns" "$@"
}

# PUT /api/domain/{id}/dns/{index} - Update DNS record
update-record() {
    hc_put "/api/domain/{id}/dns/{index}" "$@"
}

# DELETE /api/domain/{id}/dns/{index} - Remove DNS record
delete-record() {
    hc_delete "/api/domain/{id}/dns/{index}" "$@"
}

# GET /api/domain/{id}/dns/types - List supported record types
get-record-types() {
    hc_get "/api/domain/{id}/dns/types" "$@"
}

# GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags
get-dnssec-flags() {
    hc_get "/api/domain/{id}/dnssec/flags" "$@"
}

# GET /api/domain/{id}/dnssec - Get DNSSEC records
get-dnssec-records() {
    hc_get "/api/domain/{id}/dnssec" "$@"
}

# POST /api/domain/{id}/dnssec - Create DNSSEC record
create-dnssec-record() {
    hc_post "/api/domain/{id}/dnssec" "$@"
}

# DELETE /api/domain/{id}/dnssec - Remove DNSSEC record
delete-dnssec-record() {
    hc_delete "/api/domain/{id}/dnssec" "$@"
}

# POST /api/domain/{id}/reg - Register domain nameserver
register-nameserver() {
    hc_post "/api/domain/{id}/reg" "$@"
}

