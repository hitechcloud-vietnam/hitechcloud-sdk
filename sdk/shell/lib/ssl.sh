#!/usr/bin/env bash
# SSL Certificates: list, order, download certificates
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/certificate - List all SSL certificates
list() {
    hc_get "/api/certificate" "$@"
}

# GET /api/certificate/{id} - Return certificate details
get() {
    hc_get "/api/certificate/{id}" "$@"
}

# GET /api/certificate/{id}/crt - Download X.509 certificate
download() {
    hc_get "/api/certificate/{id}/crt" "$@"
}

# GET /api/certificate/order - List available certificates for purchase
list-available() {
    hc_get "/api/certificate/order" "$@"
}

# POST /api/certificate/order - Order new certificate
order() {
    hc_post "/api/certificate/order" "$@"
}

# GET /api/certificate/order/{product_id}/software - List server software
list-server-software() {
    hc_get "/api/certificate/order/{product_id}/software" "$@"
}

