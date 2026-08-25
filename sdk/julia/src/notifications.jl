# Notifications: manage notification preferences
struct NotificationsResource
    http::HttpClient
end

# GET /api/notifications - List all notifications
function list(r::NotificationsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/notifications"; params = params)
end

# GET /api/notifications/new - Return only new portal notifications
function list_new(r::NotificationsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/notifications/new"; params = params)
end

# PUT /api/notifications/{id}/ack - Mark notification as read
function acknowledge(r::NotificationsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/notifications/{id}/ack"; params = params)
end
