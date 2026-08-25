# Account Authentication: login, logout, token refresh, signup, password reset
struct AuthResource
    http::HttpClient
end

# POST /api/login - Authenticate and obtain access token
function login(r::AuthResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/login"; params = params)
end

# POST /api/logout - Invalidate current access token
function logout(r::AuthResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/logout"; params = params)
end

# POST /api/token - Generate new token using refresh token
function refresh_token(r::AuthResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/token"; params = params)
end

# POST /api/revoke - Invalidate authorization and refresh token
function revoke_token(r::AuthResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/revoke"; params = params)
end

# POST /api/passwordreset - Request password reset email
function password_reset(r::AuthResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/passwordreset"; params = params)
end

# POST /api/signup - Create new account
function signup(r::AuthResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/signup"; params = params)
end
