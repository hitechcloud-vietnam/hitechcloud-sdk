# WillExpired: expiring services and domains management
struct WillExpiredResource
    http::HttpClient
end

# GET /api/willexpired - List expiring services and domains
function list_expiring(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired"; params = params)
end

# GET /api/willexpired/summary - Expiring summary
function get_summary(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired/summary"; params = params)
end

# GET /api/willexpired/config - Module configuration
function get_config(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired/config"; params = params)
end

# GET /api/willexpired/invoices - Open renewal invoices
function list_open_invoices(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired/invoices"; params = params)
end

# GET /api/willexpired/requests - Renewal request log
function list_requests(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired/requests"; params = params)
end

# GET /api/willexpired/export - Export all expiring items
function export_all(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired/export"; params = params)
end

# GET /api/willexpired/{type}/{id} - Get item detail
function get_item(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired/{type}/{id}"; params = params)
end

# POST /api/willexpired/{type}/{id}/renew - Renew item
function renew(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/willexpired/{type}/{id}/renew"; params = params)
end

# GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status
function get_autorenew(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/willexpired/{type}/{id}/autorenew"; params = params)
end

# PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew
function set_autorenew(r::WillExpiredResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/willexpired/{type}/{id}/autorenew"; params = params)
end
