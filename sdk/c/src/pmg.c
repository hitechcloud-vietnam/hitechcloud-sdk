#include "hitechcloud/pmg.h"
#include <stdlib.h>


/* GET /api/service/{id}/htcpmg/config - Get mail filtering configuration */
char *hc_pmg_get_config(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpmg/config", NULL);
}

/* POST /api/service/{id}/htcpmg/domains - Add a domain */
char *hc_pmg_add_domain(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/htcpmg/domains", NULL);
}

/* POST /api/service/{id}/htcpmg/transport - Set target mail server */
char *hc_pmg_set_transport(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/htcpmg/transport", NULL);
}

/* GET /api/service/{id}/htcpmg/stats - Get mail statistics */
char *hc_pmg_get_stats(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpmg/stats", NULL);
}

