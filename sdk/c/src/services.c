#include "hitechcloud/services.h"
#include <stdlib.h>


/* GET /api/service - List all services */
char *hc_services_list(hc_http_client_t *client) {
    return hc_get(client, "/api/service", NULL);
}

/* GET /api/service/{id} - Return service details */
char *hc_services_get(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}", NULL);
}

/* GET /api/service/{id}/methods - List methods available for service */
char *hc_services_list_methods(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/methods", NULL);
}

/* POST /api/service/{id}/cancel - Request service cancellation */
char *hc_services_cancel(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/cancel", NULL);
}

/* GET /api/service/{id}/label - Show current service label */
char *hc_services_get_label(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/label", NULL);
}

/* POST /api/service/{id}/label - Set new custom label */
char *hc_services_set_label(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/label", NULL);
}

/* POST /api/service/{id}/renew - Generate renewal invoice */
char *hc_services_renew(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/renew", NULL);
}

/* GET /api/service/{id}/cycle - Get billing cycle options */
char *hc_services_list_billing_cycles(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/cycle", NULL);
}

/* POST /api/service/{id}/cycle - Change billing cycle */
char *hc_services_change_billing_cycle(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/cycle", NULL);
}

