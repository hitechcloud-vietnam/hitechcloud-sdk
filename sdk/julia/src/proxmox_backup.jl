# Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token
struct ProxmoxBackupResource
    http::HttpClient
end

# GET /api/service/{id}/pbs - Get backup connection info
function get_connection_info(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pbs"; params = params)
end

# GET /api/service/{id}/pbs/credentials - Get backup credentials
function get_credentials(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pbs/credentials"; params = params)
end

# GET /api/service/{id}/pbs/usage - Get backup usage
function get_usage(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pbs/usage"; params = params)
end

# GET /api/service/{id}/pbs/metrics - Get backup metrics
function get_metrics(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pbs/metrics"; params = params)
end

# GET /api/service/{id}/pbs/snapshots - List snapshots
function list_snapshots(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pbs/snapshots"; params = params)
end

# GET /api/service/{id}/pbs/groups - List backup groups
function list_groups(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pbs/groups"; params = params)
end

# POST /api/service/{id}/pbs/password - Change backup password
function change_password(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/pbs/password"; params = params)
end

# POST /api/service/{id}/pbs/token - Rotate API token
function rotate_token(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/pbs/token"; params = params)
end

# DELETE /api/service/{id}/pbs/token - Revoke API token
function revoke_token(r::ProxmoxBackupResource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{id}/pbs/token"; params = params)
end
