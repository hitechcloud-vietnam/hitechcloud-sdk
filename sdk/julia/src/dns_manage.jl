# DNS Manage: domain DNS records, DNSSEC, nameserver registration
struct DnsManageResource
    http::HttpClient
end

# GET /api/domain/{id}/dns - List DNS records
function get_records(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/dns"; params = params)
end

# POST /api/domain/{id}/dns - Create DNS record
function create_record(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/domain/{id}/dns"; params = params)
end

# PUT /api/domain/{id}/dns/{index} - Update DNS record
function update_record(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/domain/{id}/dns/{index}"; params = params)
end

# DELETE /api/domain/{id}/dns/{index} - Remove DNS record
function delete_record(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/domain/{id}/dns/{index}"; params = params)
end

# GET /api/domain/{id}/dns/types - List supported record types
function get_record_types(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/dns/types"; params = params)
end

# GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags
function get_dnssec_flags(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/dnssec/flags"; params = params)
end

# GET /api/domain/{id}/dnssec - Get DNSSEC records
function get_dnssec_records(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/dnssec"; params = params)
end

# POST /api/domain/{id}/dnssec - Create DNSSEC record
function create_dnssec_record(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/domain/{id}/dnssec"; params = params)
end

# DELETE /api/domain/{id}/dnssec - Remove DNSSEC record
function delete_dnssec_record(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/domain/{id}/dnssec"; params = params)
end

# POST /api/domain/{id}/reg - Register domain nameserver
function register_nameserver(r::DnsManageResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/domain/{id}/reg"; params = params)
end
