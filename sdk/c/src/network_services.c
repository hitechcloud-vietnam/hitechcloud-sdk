#include "hitechcloud/network_services.h"
#include <stdlib.h>


/* GET /api/service/{id}/ip - List Service IP Addresses */
char *hc_network_services_list_ips(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/ip", NULL);
}

/* GET /api/service/{id}/rdns - Get reverse DNS entries */
char *hc_network_services_get_rdns(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/rdns", NULL);
}

/* POST /api/service/{id}/rdns - Update reverse DNS entries */
char *hc_network_services_update_rdns(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/rdns", NULL);
}

