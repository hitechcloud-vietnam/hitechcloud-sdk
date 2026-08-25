# SSL Certificates: list, order, download certificates
struct SSLResource
    http::HttpClient
end

# GET /api/certificate - List all SSL certificates
function list(r::SSLResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/certificate"; params = params)
end

# GET /api/certificate/{id} - Return certificate details
function get(r::SSLResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/certificate/{id}"; params = params)
end

# GET /api/certificate/{id}/crt - Download X.509 certificate
function download(r::SSLResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/certificate/{id}/crt"; params = params)
end

# GET /api/certificate/order - List available certificates for purchase
function list_available(r::SSLResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/certificate/order"; params = params)
end

# POST /api/certificate/order - Order new certificate
function order(r::SSLResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/certificate/order"; params = params)
end

# GET /api/certificate/order/{product_id}/software - List server software
function list_server_software(r::SSLResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/certificate/order/{product_id}/software"; params = params)
end
