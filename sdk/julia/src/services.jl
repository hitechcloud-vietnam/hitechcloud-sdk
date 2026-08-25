# Services: list, details, cancel, renew, billing cycle
struct ServicesResource
    http::HttpClient
end

# GET /api/service - List all services
function list(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service"; params = params)
end

# GET /api/service/{id} - Return service details
function get(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}"; params = params)
end

# GET /api/service/{id}/methods - List methods available for service
function list_methods(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/methods"; params = params)
end

# POST /api/service/{id}/cancel - Request service cancellation
function cancel(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/cancel"; params = params)
end

# GET /api/service/{id}/label - Show current service label
function get_label(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/label"; params = params)
end

# POST /api/service/{id}/label - Set new custom label
function set_label(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/label"; params = params)
end

# POST /api/service/{id}/renew - Generate renewal invoice
function renew(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/renew"; params = params)
end

# GET /api/service/{id}/cycle - Get billing cycle options
function list_billing_cycles(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/cycle"; params = params)
end

# POST /api/service/{id}/cycle - Change billing cycle
function change_billing_cycle(r::ServicesResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/cycle"; params = params)
end
