#!/usr/bin/env bash
# Cart: shopping cart management
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/category - Return a list of product categories
list-categories() {
    hc_get "/api/category" "$@"
}

# GET /api/category/{category_id}/product - List products in category
list-products() {
    hc_get "/api/category/{category_id}/product" "$@"
}

# GET /api/order/{product_id} - Get product configuration details
get-product-config() {
    hc_get "/api/order/{product_id}" "$@"
}

# POST /api/order/{product_id} - Order new service
order-product() {
    hc_post "/api/order/{product_id}" "$@"
}

# POST /api/order - Order multiple services
order-multiple() {
    hc_post "/api/order" "$@"
}

# POST /api/quote - Calculate order cost and recurring prices
get-quote() {
    hc_post "/api/quote" "$@"
}

