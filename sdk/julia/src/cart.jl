# Cart: shopping cart management
struct CartResource
    http::HttpClient
end

# GET /api/category - Return a list of product categories
function list_categories(r::CartResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/category"; params = params)
end

# GET /api/category/{category_id}/product - List products in category
function list_products(r::CartResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/category/{category_id}/product"; params = params)
end

# GET /api/order/{product_id} - Get product configuration details
function get_product_config(r::CartResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/order/{product_id}"; params = params)
end

# POST /api/order/{product_id} - Order new service
function order_product(r::CartResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/order/{product_id}"; params = params)
end

# POST /api/order - Order multiple services
function order_multiple(r::CartResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/order"; params = params)
end

# POST /api/quote - Calculate order cost and recurring prices
function get_quote(r::CartResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/quote"; params = params)
end
