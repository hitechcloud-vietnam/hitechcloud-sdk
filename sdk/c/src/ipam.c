#include "hitechcloud/ipam.h"
#include <stdlib.h>


/* GET /api/service/{id}/htcipam/ips - List IP addresses */
char *hc_ipam_list_ips(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcipam/ips", NULL);
}

/* GET /api/service/{id}/htcipam/subnets - List subnets */
char *hc_ipam_list_subnets(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcipam/subnets", NULL);
}

/* GET /api/service/{id}/htcipam/rdns - List reverse DNS records */
char *hc_ipam_list_rdns(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcipam/rdns", NULL);
}

/* POST /api/service/{id}/htcipam/rdns - Set reverse DNS */
char *hc_ipam_set_rdns(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/htcipam/rdns", NULL);
}

