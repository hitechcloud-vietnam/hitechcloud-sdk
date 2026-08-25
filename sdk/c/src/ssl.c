#include "hitechcloud/ssl.h"
#include <stdlib.h>


/* GET /api/certificate - List all SSL certificates */
char *hc_ssl_list(hc_http_client_t *client) {
    return hc_get(client, "/api/certificate", NULL);
}

/* GET /api/certificate/{id} - Return certificate details */
char *hc_ssl_get(hc_http_client_t *client) {
    return hc_get(client, "/api/certificate/{id}", NULL);
}

/* GET /api/certificate/{id}/crt - Download X.509 certificate */
char *hc_ssl_download(hc_http_client_t *client) {
    return hc_get(client, "/api/certificate/{id}/crt", NULL);
}

/* GET /api/certificate/order - List available certificates for purchase */
char *hc_ssl_list_available(hc_http_client_t *client) {
    return hc_get(client, "/api/certificate/order", NULL);
}

/* POST /api/certificate/order - Order new certificate */
char *hc_ssl_order(hc_http_client_t *client) {
    return hc_post(client, "/api/certificate/order", NULL);
}

/* GET /api/certificate/order/{product_id}/software - List server software */
char *hc_ssl_list_server_software(hc_http_client_t *client) {
    return hc_get(client, "/api/certificate/order/{product_id}/software", NULL);
}

