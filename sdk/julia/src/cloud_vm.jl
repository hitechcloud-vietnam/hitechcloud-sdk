# Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE
struct CloudVmResource
    http::HttpClient
end

# GET /api/service/{id}/upgrade - List resource upgrade options
function get_upgrade_options(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/upgrade"; params = params)
end

# POST /api/service/{id}/upgrade - Estimate or request upgrade
function request_upgrade(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/upgrade"; params = params)
end

# GET /api/service/{id}/resources - Show available and used resources
function get_resources(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/resources"; params = params)
end

# GET /api/service/{id}/templates/{vmid} - List rebuild templates
function list_rebuild_templates(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/templates/{vmid}"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph
function get_memory_usage(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/usage/memory"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM
function list_iso_images(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/images"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image
function mount_iso(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/images"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/boot - Change boot order
function set_boot_order(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/boot"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE
function enable_pxe(r::CloudVmResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/tuntap"; params = params)
end
