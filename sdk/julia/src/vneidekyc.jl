# VNeIDEKYC: eKYC identity verification and organization verification
struct VNeIdeKycResource
    http::HttpClient
end

# GET /api/vneidekyc/ekyc/session - Start personal eKYC session
function start_personal_ekyc(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/vneidekyc/ekyc/session"; params = params)
end

# GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session
function get_ekyc_session(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/vneidekyc/ekyc/session/{session_hash}"; params = params)
end

# GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions
function list_client_sessions(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/vneidekyc/ekyc/list/{client_id}"; params = params)
end

# POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file
function upload_file(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/ekyc/{session_hash}/upload"; params = params)
end

# POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC
function submit_ekyc(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/ekyc/{session_hash}/submit"; params = params)
end

# POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session
function cancel_session(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/ekyc/{session_hash}/cancel"; params = params)
end

# POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC
function accept_ekyc(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/ekyc/{session_hash}/accept"; params = params)
end

# POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC
function reject_ekyc(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/ekyc/{session_hash}/reject"; params = params)
end

# POST /api/vneidekyc/org/lookup - Organization tax code lookup
function lookup_organization(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/org/lookup"; params = params)
end

# POST /api/vneidekyc/org/start - Start organization verification
function start_org_verification(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/org/start"; params = params)
end

# GET /api/vneidekyc/org/{org_hash} - Get organization record
function get_organization(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/vneidekyc/org/{org_hash}"; params = params)
end

# POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization
function accept_organization(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/org/{org_hash}/accept"; params = params)
end

# POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization
function reject_organization(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/org/{org_hash}/reject"; params = params)
end

# POST /api/vneidekyc/pdf/upload - Upload signed PDF
function upload_signed_pdf(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/vneidekyc/pdf/upload"; params = params)
end

# GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record
function get_signed_pdf(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/vneidekyc/pdf/{pdf_hash}"; params = params)
end

# GET /api/vneidekyc/client/{client_id}/status - Client verification status
function get_client_status(r::VNeIdeKycResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/vneidekyc/client/{client_id}/status"; params = params)
end
