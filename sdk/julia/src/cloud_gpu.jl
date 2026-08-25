# Cloud GPU: GPU instance management
struct CloudGpuResource
    http::HttpClient
end

# PUT /api/service/{id}/vms/reboot - Reboot virtual server
function reboot(r::CloudGpuResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{id}/vms/reboot"; params = params)
end

# PUT /api/service/{id}/vms/stop - Stop virtual server
function stop(r::CloudGpuResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{id}/vms/stop"; params = params)
end

# PUT /api/service/{id}/vms/start - Start virtual server
function start(r::CloudGpuResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{id}/vms/start"; params = params)
end

# GET /api/service/{id}/vms/firewall - Get firewall rules
function get_firewall_rules(r::CloudGpuResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/firewall"; params = params)
end

# POST /api/service/{id}/vms/firewall - Add firewall rules
function add_firewall_rules(r::CloudGpuResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/firewall"; params = params)
end

# DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule
function remove_firewall_rule(r::CloudGpuResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{id}/vms/firewall/{position}"; params = params)
end
