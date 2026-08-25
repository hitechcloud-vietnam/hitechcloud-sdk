#!/usr/bin/env bash
# WillExpired: expiring services and domains management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/willexpired - List expiring services and domains
list-expiring() {
    hc_get "/api/willexpired" "$@"
}

# GET /api/willexpired/summary - Expiring summary
get-summary() {
    hc_get "/api/willexpired/summary" "$@"
}

# GET /api/willexpired/config - Module configuration
get-config() {
    hc_get "/api/willexpired/config" "$@"
}

# GET /api/willexpired/invoices - Open renewal invoices
list-open-invoices() {
    hc_get "/api/willexpired/invoices" "$@"
}

# GET /api/willexpired/requests - Renewal request log
list-requests() {
    hc_get "/api/willexpired/requests" "$@"
}

# GET /api/willexpired/export - Export all expiring items
export-all() {
    hc_get "/api/willexpired/export" "$@"
}

# GET /api/willexpired/{type}/{id} - Get item detail
get-item() {
    hc_get "/api/willexpired/{type}/{id}" "$@"
}

# POST /api/willexpired/{type}/{id}/renew - Renew item
renew() {
    hc_post "/api/willexpired/{type}/{id}/renew" "$@"
}

# GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status
get-autorenew() {
    hc_get "/api/willexpired/{type}/{id}/autorenew" "$@"
}

# PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew
set-autorenew() {
    hc_put "/api/willexpired/{type}/{id}/autorenew" "$@"
}

