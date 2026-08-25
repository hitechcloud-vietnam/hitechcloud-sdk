# LocationV2: countries, states, cities lookup
struct LocationV2Resource
    http::HttpClient
end

# GET /api/location_v2/countries - Return list of countries
function list_countries(r::LocationV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/location_v2/countries"; params = params)
end

# GET /api/location_v2/{code}/state - Return states for a country code
function get_states(r::LocationV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/location_v2/{code}/state"; params = params)
end

# GET /api/location_v2/state/{id}/city - Return cities for a state ID
function get_cities(r::LocationV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/location_v2/state/{id}/city"; params = params)
end

# GET /api/location_v2/state/city/{name} - Return cities for a state name
function get_cities_by_state_name(r::LocationV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/location_v2/state/city/{name}"; params = params)
end
