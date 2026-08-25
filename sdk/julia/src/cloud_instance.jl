# Cloud Instance: full VM lifecycle management
struct CloudInstanceResource
    http::HttpClient
end

# GET /api/service/{id}/vms - List virtual servers
function list_vms(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms"; params = params)
end

# POST /api/service/{id}/vms - Create new virtual server
function create_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms"; params = params)
end

# GET /api/service/{id}/vms/{vmid} - Get VM details
function get_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}"; params = params)
end

# DELETE /api/service/{id}/vms/{vmid} - Remove virtual server
function destroy_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{id}/vms/{vmid}"; params = params)
end

# PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server
function resize_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{id}/vms/{vmid}"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server
function stop_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/stop"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/start - Start virtual server
function start_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/start"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server
function reboot_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/reboot"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password
function reset_password(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/resetpwd"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server
function rebuild_vm(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/rebuild"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM
function list_vm_ips(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/ips"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM
function assign_ip(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/ips"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces
function list_interfaces(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/interfaces"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph
function get_cpu_usage(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/usage/cpu"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph
function get_network_usage(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/usage/net"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph
function get_disk_usage(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/usage/disk"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM
function list_disks(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/storage"; params = params)
end

# PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk
function resize_disk(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{id}/vms/{vmid}/storage/{diskid}"; params = params)
end

# GET /api/service/{id}/images - List ISO images
function list_iso_images(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/images"; params = params)
end

# POST /api/service/{id}/images - Add ISO image
function add_iso_image(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/images"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs
function list_available_ips(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips"; params = params)
end

# DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM
function remove_ip(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{id}/vms/{vmid}/ips/{ipid}"; params = params)
end

# GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries
function get_rdns(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vms/{vmid}/rdns"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries
function update_rdns(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/rdns"; params = params)
end

# POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network
function rebuild_network(r::CloudInstanceResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/vms/{vmid}/rebuild_network"; params = params)
end
