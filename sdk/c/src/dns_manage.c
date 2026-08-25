#include "hitechcloud/dns_manage.h"
#include <stdlib.h>


/* GET /api/domain/{id}/dns - List DNS records */
char *hc_dns_manage_get_records(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/dns", NULL);
}

/* POST /api/domain/{id}/dns - Create DNS record */
char *hc_dns_manage_create_record(hc_http_client_t *client) {
    return hc_post(client, "/api/domain/{id}/dns", NULL);
}

/* PUT /api/domain/{id}/dns/{index} - Update DNS record */
char *hc_dns_manage_update_record(hc_http_client_t *client) {
    return hc_put(client, "/api/domain/{id}/dns/{index}", NULL);
}

/* DELETE /api/domain/{id}/dns/{index} - Remove DNS record */
char *hc_dns_manage_delete_record(hc_http_client_t *client) {
    return hc_delete(client, "/api/domain/{id}/dns/{index}", NULL);
}

/* GET /api/domain/{id}/dns/types - List supported record types */
char *hc_dns_manage_get_record_types(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/dns/types", NULL);
}

/* GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags */
char *hc_dns_manage_get_dnssec_flags(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/dnssec/flags", NULL);
}

/* GET /api/domain/{id}/dnssec - Get DNSSEC records */
char *hc_dns_manage_get_dnssec_records(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/dnssec", NULL);
}

/* POST /api/domain/{id}/dnssec - Create DNSSEC record */
char *hc_dns_manage_create_dnssec_record(hc_http_client_t *client) {
    return hc_post(client, "/api/domain/{id}/dnssec", NULL);
}

/* DELETE /api/domain/{id}/dnssec - Remove DNSSEC record */
char *hc_dns_manage_delete_dnssec_record(hc_http_client_t *client) {
    return hc_delete(client, "/api/domain/{id}/dnssec", NULL);
}

/* POST /api/domain/{id}/reg - Register domain nameserver */
char *hc_dns_manage_register_nameserver(hc_http_client_t *client) {
    return hc_post(client, "/api/domain/{id}/reg", NULL);
}

