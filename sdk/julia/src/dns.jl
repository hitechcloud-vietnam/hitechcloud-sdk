# DNS: zones and records management for services
struct DnsResource
    http::HttpClient
end

# GET /api/dns - List all DNS zones
function list(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/dns"; params = params)
end

# GET /api/service/{service_id}/dns - List DNS zones for service
function list_for_service(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{service_id}/dns"; params = params)
end

# POST /api/service/{service_id}/dns - Create DNS zone
function add_zone(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{service_id}/dns"; params = params)
end

# GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details
function get_zone(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{service_id}/dns/{zone_id}"; params = params)
end

# DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone
function delete_zone(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{service_id}/dns/{zone_id}"; params = params)
end

# POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record
function add_record(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{service_id}/dns/{zone_id}/records"; params = params)
end

# PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record
function edit_record(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{service_id}/dns/{zone_id}/records/{record_id}"; params = params)
end

# DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record
function delete_record(r::DnsResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{service_id}/dns/{zone_id}/records/{record_id}"; params = params)
end
