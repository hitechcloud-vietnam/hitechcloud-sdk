# Collocation Services: PDU port management
struct CollocationResource
    http::HttpClient
end

# GET /api/service/{id}/pdu - List PDU ports assigned to service
function list_pdu_ports(r::CollocationResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pdu"; params = params)
end

# GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state
function get_pdu_port_state(r::CollocationResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/pdu/{port}"; params = params)
end

# POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state
function set_pdu_port_status(r::CollocationResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/pdu/{port}"; params = params)
end
