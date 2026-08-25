# HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth
struct ProxmoxResource
    http::HttpClient
end

# GET /api/service/{id}/htcpve/status - Get machine status
function get_status(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpve/status"; params = params)
end

# POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)
function power_action(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/htcpve/power"; params = params)
end

# GET /api/service/{id}/htcpve/vms - List machines
function list_vms(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpve/vms"; params = params)
end

# GET /api/service/{id}/htcpve/ips - List addresses
function list_ips(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpve/ips"; params = params)
end

# POST /api/service/{id}/htcpve/rdns - Set reverse DNS
function set_rdns(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/htcpve/rdns"; params = params)
end

# GET /api/service/{id}/htcpve/backups - List backups
function list_backups(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpve/backups"; params = params)
end

# POST /api/service/{id}/htcpve/backups - Create backup
function create_backup(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/htcpve/backups"; params = params)
end

# GET /api/service/{id}/htcpve/snapshots - List snapshots
function list_snapshots(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpve/snapshots"; params = params)
end

# POST /api/service/{id}/htcpve/snapshots - Create snapshot
function create_snapshot(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/htcpve/snapshots"; params = params)
end

# GET /api/service/{id}/htcpve/usage - Get bandwidth usage
function get_bandwidth_usage(r::ProxmoxResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/htcpve/usage"; params = params)
end
