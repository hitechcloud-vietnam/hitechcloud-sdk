# HiTechCloudIPAM: IP addresses, subnets, reverse DNS
struct IpamResource
    http::HttpClient
end

# GET /api/service/{id}/htcipam/ips - List IP addresses
function list_ips(r::IpamResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcipam/ips"; params = params)
end

# GET /api/service/{id}/htcipam/subnets - List subnets
function list_subnets(r::IpamResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcipam/subnets"; params = params)
end

# GET /api/service/{id}/htcipam/rdns - List reverse DNS records
function list_rdns(r::IpamResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcipam/rdns"; params = params)
end

# POST /api/service/{id}/htcipam/rdns - Set reverse DNS
function set_rdns(r::IpamResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/htcipam/rdns"; params = params)
end
