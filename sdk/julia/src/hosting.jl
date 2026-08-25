# Hosting Services: reinstall, status, bandwidth, reset
struct HostingResource
    http::HttpClient
end

# GET /api/service/{id}/reinstall - Return installation options
function get_reinstall_details(r::HostingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/reinstall"; params = params)
end

# POST /api/service/{id}/reinstall - Reinstall server
function reinstall(r::HostingResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/reinstall"; params = params)
end

# GET /api/service/{id}/status - Return server power status
function get_status(r::HostingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/status"; params = params)
end

# GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs
function get_bandwidth_graphs(r::HostingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/bandwidth-graphs"; params = params)
end

# GET /api/service/{id}/bandwidth - Return bandwidth usage and billing
function get_bandwidth_usage(r::HostingResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/bandwidth"; params = params)
end

# POST /api/service/{id}/reset - Reset server
function reset(r::HostingResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/reset"; params = params)
end
