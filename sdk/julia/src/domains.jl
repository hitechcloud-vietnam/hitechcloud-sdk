# Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding
struct DomainsResource
    http::HttpClient
end

# GET /api/domain - List domains under your account
function list(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain"; params = params)
end

# GET /api/domain/{id} - Get domain details
function get(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}"; params = params)
end

# GET /api/domain/name/{name} - Get domain details by name
function get_by_name(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/name/{name}"; params = params)
end

# GET /api/whois/{domain} - WHOIS lookup
function whois(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/whois/{domain}"; params = params)
end

# GET /api/whoislookup/{domain} - Perform WHOIS lookup
function whois_lookup(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/whoislookup/{domain}"; params = params)
end

# GET /api/domain/availability/{domain} - Check domain availability
function check_availability(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/availability/{domain}"; params = params)
end

# GET /api/domain/{id}/ns - Get domain nameservers
function get_nameservers(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/ns"; params = params)
end

# PUT /api/domain/{id}/ns - Update domain nameservers
function update_nameservers(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/domain/{id}/ns"; params = params)
end

# GET /api/domain/{id}/epp - Get domain EPP code
function get_epp_code(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/epp"; params = params)
end

# GET /api/domain/{id}/sync - Synchronize domain
function sync(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/sync"; params = params)
end

# GET /api/domain/{id}/reglock - Get domain lock status
function get_lock(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/reglock"; params = params)
end

# PUT /api/domain/{id}/reglock - Update domain lock
function update_lock(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/domain/{id}/reglock"; params = params)
end

# PUT /api/domain/{id}/idprotection - Update ID protection
function update_id_protection(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/domain/{id}/idprotection"; params = params)
end

# GET /api/domain/{id}/contact - Get domain contact info
function get_contact(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/contact"; params = params)
end

# PUT /api/domain/{id}/contact - Update domain contact info
function update_contact(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/domain/{id}/contact"; params = params)
end

# GET /api/domain/{id}/email/forwarding - Get email forwarding
function get_email_forwarding(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/email/forwarding"; params = params)
end

# PUT /api/domain/{id}/email/forwarding - Update email forwarding
function update_email_forwarding(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_put(r.http, "/api/domain/{id}/email/forwarding"; params = params)
end

# GET /api/domain/order - List available TLDs
function get_available_tlds(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/order"; params = params)
end

# POST /api/domain/order - Order new domain
function order(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/domain/order"; params = params)
end

# POST /api/domain/{id}/renew - Renew domain
function renew(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/domain/{id}/renew"; params = params)
end

# GET /api/domain/order/{id}/form - Get additional data for TLD
function get_tld_form(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/order/{id}/form"; params = params)
end

# GET /api/domain/{id}/documents - Get domain documents
function get_documents(r::DomainsResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/domain/{id}/documents"; params = params)
end
