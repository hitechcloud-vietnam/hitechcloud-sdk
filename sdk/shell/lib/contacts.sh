#!/usr/bin/env bash
# Contacts: manage account contacts
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/contact - Return a list of contacts on this account
list() {
    hc_get "/api/contact" "$@"
}

# POST /api/contact - Create new contact account
create() {
    hc_post "/api/contact" "$@"
}

# GET /api/contact/privileges - List possible contact privileges
get-privileges() {
    hc_get "/api/contact/privileges" "$@"
}

# GET /api/contact/{id} - Get contact details
get() {
    hc_get "/api/contact/{id}" "$@"
}

# PUT /api/contact/{id} - Update contact details
update() {
    hc_put "/api/contact/{id}" "$@"
}

