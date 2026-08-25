# Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power
struct BareMetalResource
    http::HttpClient
end

# GET /api/service/{id}/reinstall/templates - List OS templates and recipes
function list_reinstall_templates(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/reinstall/templates"; params = params)
end

# POST /api/service/{id}/diag/cancel - Cancel diagnostics operation
function cancel_diagnostics(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/diag/cancel"; params = params)
end

# GET /api/service/{id}/diag/templates - List diagnostics templates
function list_diagnostics_templates(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/diag/templates"; params = params)
end

# GET /api/service/{id}/diag - Show diagnostic operation status
function get_diagnostics_status(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/diag"; params = params)
end

# POST /api/service/{id}/diag - Start new diagnostic operation
function run_diagnostics(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/diag"; params = params)
end

# GET /api/service/{id}/rescue/templates - List rescue templates
function list_rescue_templates(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/rescue/templates"; params = params)
end

# GET /api/service/{id}/rescue - Show rescue operation status
function get_rescue_status(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/rescue"; params = params)
end

# POST /api/service/{id}/rescue - Start rescue operation
function rescue(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/rescue"; params = params)
end

# POST /api/service/{id}/rescue/cancel - Cancel rescue operation
function cancel_rescue(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/rescue/cancel"; params = params)
end

# GET /api/service/{id}/info - Get server hardware and OS details
function get_server_info(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/info"; params = params)
end

# POST /api/service/{id}/hostname - Update server hostname
function update_hostname(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/hostname"; params = params)
end

# GET /api/service/{id}/ips - List server IPs
function list_ips(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/ips"; params = params)
end

# POST /api/service/{id}/ips - Add new IP to server
function add_ip(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/ips"; params = params)
end

# GET /api/service/{id}/vlans - List available VLANs
function list_vlans(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/vlans"; params = params)
end

# GET /api/service/{id}/ips/{ip} - Get IP details
function get_ip_details(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/ips/{ip}"; params = params)
end

# PUT /api/service/{id}/ips/{ip} - Edit IP
function edit_ip(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/service/{id}/ips/{ip}"; params = params)
end

# GET /api/service/{id}/reinstall - Return installation options
function get_reinstall_details(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/reinstall"; params = params)
end

# POST /api/service/{id}/reinstall - Reinstall server
function reinstall(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/reinstall"; params = params)
end

# GET /api/service/{id}/status - Return server power status
function get_status(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/status"; params = params)
end

# POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)
function power_action(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/power/{action}"; params = params)
end

# GET /api/serverstock - List servers in stock
function list_servers_in_stock(r::BareMetalResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/serverstock"; params = params)
end
