# Contacts: manage account contacts
struct ContactsResource
    http::HttpClient
end

# GET /api/contact - Return a list of contacts on this account
function list(r::ContactsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/contact"; params = params)
end

# POST /api/contact - Create new contact account
function create(r::ContactsResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/contact"; params = params)
end

# GET /api/contact/privileges - List possible contact privileges
function get_privileges(r::ContactsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/contact/privileges"; params = params)
end

# GET /api/contact/{id} - Get contact details
function get(r::ContactsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/contact/{id}"; params = params)
end

# PUT /api/contact/{id} - Update contact details
function update(r::ContactsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/contact/{id}"; params = params)
end
