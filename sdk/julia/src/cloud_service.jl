# Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces
struct CloudServiceResource
    http::HttpClient
end

# POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown
function shutdown_vm(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/shutdown"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power
function reset_vm(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/reset"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname
function change_hostname(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/hostname"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/ippool - List IP pools
function list_ip_pools(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/ippool"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP
function allocate_ip(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/ippool/{pool}"; params = params)
end

# GET /api/service/{id}/networks - List available networks
function list_networks(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/networks"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface
function add_interface(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/interfaces"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details
function get_interface(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/interfaces/{iface}"; params = params)
end

# PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface
function update_interface(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{id}/vms/{vmid}/interfaces/{iface}"; params = params)
end

# DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface
function remove_interface(r::CloudServiceResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{id}/vms/{vmid}/interfaces/{iface}"; params = params)
end
