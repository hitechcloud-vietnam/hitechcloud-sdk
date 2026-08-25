# PasskeyV2: passkey-based MFA management
struct PasskeyV2Resource
    http::HttpClient
end

# GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status
function get_mfa_status(r::PasskeyV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/passkeyv2/status/{user_type}/{user_id}"; params = params)
end

# GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials
function list_credentials(r::PasskeyV2Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/passkeyv2/credentials/{user_type}/{user_id}"; params = params)
end

# POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential
function delete_credential(r::PasskeyV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/passkeyv2/credentials/{user_type}/{user_id}/delete"; params = params)
end

# POST /api/passkeyv2/email_otp/send - Send email OTP
function send_email_otp(r::PasskeyV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/passkeyv2/email_otp/send"; params = params)
end

# POST /api/passkeyv2/email_otp/verify - Verify email OTP
function verify_email_otp(r::PasskeyV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/passkeyv2/email_otp/verify"; params = params)
end

# POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA
function disable_mfa(r::PasskeyV2Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/passkeyv2/disable/{user_type}/{user_id}"; params = params)
end
