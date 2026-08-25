#!/usr/bin/env bash
# LocationV2: countries, states, cities lookup
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/location_v2/countries - Return list of countries
list-countries() {
    hc_get "/api/location_v2/countries" "$@"
}

# GET /api/location_v2/{code}/state - Return states for a country code
get-states() {
    hc_get "/api/location_v2/{code}/state" "$@"
}

# GET /api/location_v2/state/{id}/city - Return cities for a state ID
get-cities() {
    hc_get "/api/location_v2/state/{id}/city" "$@"
}

# GET /api/location_v2/state/city/{name} - Return cities for a state name
get-cities-by-state-name() {
    hc_get "/api/location_v2/state/city/{name}" "$@"
}

