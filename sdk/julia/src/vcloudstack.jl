# vCloudStack Public Cloud: rescue, unrescue, console, usage
struct VCloudStackResource
    http::HttpClient
end

# POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode
function rescue_vm(r::VCloudStackResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/rescue"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode
function unrescue_vm(r::VCloudStackResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/unrescue"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/console - Get VM console
function get_console(r::VCloudStackResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/console"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details
function get_usage(r::VCloudStackResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/usage"; params = params)
end
