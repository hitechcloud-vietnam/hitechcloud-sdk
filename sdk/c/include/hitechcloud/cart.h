#ifndef HITECHCLOUD_CART_H
#define HITECHCLOUD_CART_H

#include "http_client.h"

/* Cart: shopping cart management */
char *hc_cart_list_categories(hc_http_client_t *client);
char *hc_cart_list_products(hc_http_client_t *client);
char *hc_cart_get_product_config(hc_http_client_t *client);
char *hc_cart_order_product(hc_http_client_t *client);
char *hc_cart_order_multiple(hc_http_client_t *client);
char *hc_cart_get_quote(hc_http_client_t *client);

#endif
