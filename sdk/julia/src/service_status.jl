# Service Status: list and manage service statuses
struct ServiceStatusResource
    http::HttpClient
end

# GET /api/statuses - Returns a list of all statuses
function list(r::ServiceStatusResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/statuses"; params = params)
end

# PUT /api/statuses/{id} - Returns details of status
function get(r::ServiceStatusResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/statuses/{id}"; params = params)
end
