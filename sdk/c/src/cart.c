#include "hitechcloud/cart.h"
#include <stdlib.h>


/* GET /api/category - Return a list of product categories */
char *hc_cart_list_categories(hc_http_client_t *client) {
    return hc_get(client, "/api/category", NULL);
}

/* GET /api/category/{category_id}/product - List products in category */
char *hc_cart_list_products(hc_http_client_t *client) {
    return hc_get(client, "/api/category/{category_id}/product", NULL);
}

/* GET /api/order/{product_id} - Get product configuration details */
char *hc_cart_get_product_config(hc_http_client_t *client) {
    return hc_get(client, "/api/order/{product_id}", NULL);
}

/* POST /api/order/{product_id} - Order new service */
char *hc_cart_order_product(hc_http_client_t *client) {
    return hc_post(client, "/api/order/{product_id}", NULL);
}

/* POST /api/order - Order multiple services */
char *hc_cart_order_multiple(hc_http_client_t *client) {
    return hc_post(client, "/api/order", NULL);
}

/* POST /api/quote - Calculate order cost and recurring prices */
char *hc_cart_get_quote(hc_http_client_t *client) {
    return hc_post(client, "/api/quote", NULL);
}

