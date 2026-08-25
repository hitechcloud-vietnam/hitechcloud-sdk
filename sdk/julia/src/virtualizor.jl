# Virtualizor: VPS management via Virtualizor panel
struct VirtualizorResource
    http::HttpClient
end

# POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server
function suspend(r::VirtualizorResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/suspend"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server
function unsuspend(r::VirtualizorResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/unsuspend"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates
function list_rebuild_templates(r::VirtualizorResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/rebuild"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key
function change_ssh_key(r::VirtualizorResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/addsshkey"; params = params)
end
