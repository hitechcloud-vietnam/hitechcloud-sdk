#include "hitechcloud/hosting.h"
#include <stdlib.h>


/* GET /api/service/{id}/reinstall - Return installation options */
char *hc_hosting_get_reinstall_details(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/reinstall", NULL);
}

/* POST /api/service/{id}/reinstall - Reinstall server */
char *hc_hosting_reinstall(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/reinstall", NULL);
}

/* GET /api/service/{id}/status - Return server power status */
char *hc_hosting_get_status(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/status", NULL);
}

/* GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs */
char *hc_hosting_get_bandwidth_graphs(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/bandwidth-graphs", NULL);
}

/* GET /api/service/{id}/bandwidth - Return bandwidth usage and billing */
char *hc_hosting_get_bandwidth_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/bandwidth", NULL);
}

/* POST /api/service/{id}/reset - Reset server */
char *hc_hosting_reset(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/reset", NULL);
}

