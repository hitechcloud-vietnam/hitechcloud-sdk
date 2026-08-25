# EmailMfaV2: email-based MFA management
struct EmailMfaV2Resource
    http::HttpClient
end

# GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status
function get_mfa_status(r::EmailMfaV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/email_mfa_v2/status/{user_type}/{user_id}"; params = params)
end

# POST /api/email_mfa_v2/send - Send one-time code
function send_code(r::EmailMfaV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/email_mfa_v2/send"; params = params)
end

# POST /api/email_mfa_v2/verify - Verify one-time code
function verify_code(r::EmailMfaV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/email_mfa_v2/verify"; params = params)
end

# GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes
function list_active_codes(r::EmailMfaV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/email_mfa_v2/list/{user_type}/{user_id}"; params = params)
end

# POST /api/email_mfa_v2/revokeall - Revoke all active codes
function revoke_all_codes(r::EmailMfaV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/email_mfa_v2/revokeall"; params = params)
end

# POST /api/email_mfa_v2/disable - Disable MFA entirely
function disable_mfa(r::EmailMfaV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/email_mfa_v2/disable"; params = params)
end
