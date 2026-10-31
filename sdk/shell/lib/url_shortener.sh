#!/usr/bin/env bash
# URL Shortener: shorten URLs, manage links, stats
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# POST /api/url-shortener/shorten - Shorten a URL
shorten() {
    hc_post "/api/url-shortener/shorten" "$@"
}

# GET /api/url-shortener/links - List links
list-links() {
    hc_get "/api/url-shortener/links" "$@"
}

# GET /api/url-shortener/config - Get shortener config
get-config() {
    hc_get "/api/url-shortener/config" "$@"
}

# GET /api/url-shortener/stats - Get link stats
get-stats() {
    hc_get "/api/url-shortener/stats" "$@"
}

# GET /api/url-shortener/links/{id} - Get link details
get-link() {
    hc_get "/api/url-shortener/links/{id}" "$@"
}

# DELETE /api/url-shortener/links/{id} - Delete link
delete-link() {
    hc_delete "/api/url-shortener/links/{id}" "$@"
}

