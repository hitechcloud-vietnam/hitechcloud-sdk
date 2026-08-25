# HiTechCloudPMG: mail filtering configuration and management
struct PmgResource
    http::HttpClient
end

# GET /api/service/{id}/htcpmg/config - Get mail filtering configuration
function get_config(r::PmgResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpmg/config"; params = params)
end

# POST /api/service/{id}/htcpmg/domains - Add a domain
function add_domain(r::PmgResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/htcpmg/domains"; params = params)
end

# POST /api/service/{id}/htcpmg/transport - Set target mail server
function set_transport(r::PmgResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/htcpmg/transport"; params = params)
end

# GET /api/service/{id}/htcpmg/stats - Get mail statistics
function get_stats(r::PmgResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpmg/stats"; params = params)
end
