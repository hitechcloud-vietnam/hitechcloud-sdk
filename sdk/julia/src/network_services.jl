# Network Services: IP addresses and reverse DNS for services
struct NetworkServicesResource
    http::HttpClient
end

# GET /api/service/{id}/ip - List Service IP Addresses
function list_ips(r::NetworkServicesResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/ip"; params = params)
end

# GET /api/service/{id}/rdns - Get reverse DNS entries
function get_rdns(r::NetworkServicesResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/rdns"; params = params)
end

# POST /api/service/{id}/rdns - Update reverse DNS entries
function update_rdns(r::NetworkServicesResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/rdns"; params = params)
end
