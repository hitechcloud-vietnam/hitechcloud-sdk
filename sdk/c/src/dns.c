#include "hitechcloud/dns.h"
#include <stdlib.h>


/* GET /api/dns - List all DNS zones */
char *hc_dns_list(hc_http_client_t *client) {
    return hc_get(client, "/api/dns", NULL);
}

/* GET /api/service/{service_id}/dns - List DNS zones for service */
char *hc_dns_list_for_service(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{service_id}/dns", NULL);
}

/* POST /api/service/{service_id}/dns - Create DNS zone */
char *hc_dns_add_zone(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{service_id}/dns", NULL);
}

/* GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details */
char *hc_dns_get_zone(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{service_id}/dns/{zone_id}", NULL);
}

/* DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone */
char *hc_dns_delete_zone(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{service_id}/dns/{zone_id}", NULL);
}

/* POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record */
char *hc_dns_add_record(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{service_id}/dns/{zone_id}/records", NULL);
}

/* PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record */
char *hc_dns_edit_record(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{service_id}/dns/{zone_id}/records/{record_id}", NULL);
}

/* DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record */
char *hc_dns_delete_record(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{service_id}/dns/{zone_id}/records/{record_id}", NULL);
}

