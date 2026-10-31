#!/usr/bin/env bash
# Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/domain - List domains under your account
list() {
    hc_get "/api/domain" "$@"
}

# GET /api/domain/{id} - Get domain details
get() {
    hc_get "/api/domain/{id}" "$@"
}

# GET /api/domain/name/{name} - Get domain details by name
get-by-name() {
    hc_get "/api/domain/name/{name}" "$@"
}

# GET /api/whois/{domain} - WHOIS lookup
whois() {
    hc_get "/api/whois/{domain}" "$@"
}

# GET /api/whoislookup/{domain} - Perform WHOIS lookup
whois-lookup() {
    hc_get "/api/whoislookup/{domain}" "$@"
}

# GET /api/domain/availability/{domain} - Check domain availability
check-availability() {
    hc_get "/api/domain/availability/{domain}" "$@"
}

# GET /api/domain/{id}/ns - Get domain nameservers
get-nameservers() {
    hc_get "/api/domain/{id}/ns" "$@"
}

# PUT /api/domain/{id}/ns - Update domain nameservers
update-nameservers() {
    hc_put "/api/domain/{id}/ns" "$@"
}

# GET /api/domain/{id}/epp - Get domain EPP code
get-epp-code() {
    hc_get "/api/domain/{id}/epp" "$@"
}

# GET /api/domain/{id}/sync - Synchronize domain
sync() {
    hc_get "/api/domain/{id}/sync" "$@"
}

# GET /api/domain/{id}/reglock - Get domain lock status
get-lock() {
    hc_get "/api/domain/{id}/reglock" "$@"
}

# PUT /api/domain/{id}/reglock - Update domain lock
update-lock() {
    hc_put "/api/domain/{id}/reglock" "$@"
}

# PUT /api/domain/{id}/idprotection - Update ID protection
update-id-protection() {
    hc_put "/api/domain/{id}/idprotection" "$@"
}

# GET /api/domain/{id}/contact - Get domain contact info
get-contact() {
    hc_get "/api/domain/{id}/contact" "$@"
}

# PUT /api/domain/{id}/contact - Update domain contact info
update-contact() {
    hc_put "/api/domain/{id}/contact" "$@"
}

# GET /api/domain/{id}/email/forwarding - Get email forwarding
get-email-forwarding() {
    hc_get "/api/domain/{id}/email/forwarding" "$@"
}

# PUT /api/domain/{id}/email/forwarding - Update email forwarding
update-email-forwarding() {
    hc_put "/api/domain/{id}/email/forwarding" "$@"
}

# GET /api/domain/order - List available TLDs
get-available-tlds() {
    hc_get "/api/domain/order" "$@"
}

# POST /api/domain/order - Order new domain
order() {
    hc_post "/api/domain/order" "$@"
}

# POST /api/domain/{id}/renew - Renew domain
renew() {
    hc_post "/api/domain/{id}/renew" "$@"
}

# GET /api/domain/order/{id}/form - Get additional data for TLD
get-tld-form() {
    hc_get "/api/domain/order/{id}/form" "$@"
}

# GET /api/domain/{id}/documents - Get domain documents
get-documents() {
    hc_get "/api/domain/{id}/documents" "$@"
}

