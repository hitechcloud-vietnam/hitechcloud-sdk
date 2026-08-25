#ifndef HITECHCLOUD_DNS_H
#define HITECHCLOUD_DNS_H

#include "http_client.h"

/* DNS: zones and records management for services */
char *hc_dns_list(hc_http_client_t *client);
char *hc_dns_list_for_service(hc_http_client_t *client);
char *hc_dns_add_zone(hc_http_client_t *client);
char *hc_dns_get_zone(hc_http_client_t *client);
char *hc_dns_delete_zone(hc_http_client_t *client);
char *hc_dns_add_record(hc_http_client_t *client);
char *hc_dns_edit_record(hc_http_client_t *client);
char *hc_dns_delete_record(hc_http_client_t *client);

#endif
