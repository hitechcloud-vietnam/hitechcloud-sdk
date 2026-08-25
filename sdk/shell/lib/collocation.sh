#!/usr/bin/env bash
# Collocation Services: PDU port management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/pdu - List PDU ports assigned to service
list-pdu-ports() {
    hc_get "/api/service/{id}/pdu" "$@"
}

# GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state
get-pdu-port-state() {
    hc_get "/api/service/{id}/pdu/{port}" "$@"
}

# POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state
set-pdu-port-status() {
    hc_post "/api/service/{id}/pdu/{port}" "$@"
}

