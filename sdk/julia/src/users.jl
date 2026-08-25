# User Profile: view/update account details, logs
struct UsersResource
    http::HttpClient
end

# GET /api/details - Return registration details for my account
function get_details(r::UsersResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/details"; params = params)
end

# PUT /api/details - Update registration details
function update_details(r::UsersResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/details"; params = params)
end

# GET /api/logs - Returns logs from history
function get_logs(r::UsersResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/logs"; params = params)
end
