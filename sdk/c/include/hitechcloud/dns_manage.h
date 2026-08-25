#ifndef HITECHCLOUD_DNS_MANAGE_H
#define HITECHCLOUD_DNS_MANAGE_H

#include "http_client.h"

/* DNS Manage: domain DNS records, DNSSEC, nameserver registration */
char *hc_dns_manage_get_records(hc_http_client_t *client);
char *hc_dns_manage_create_record(hc_http_client_t *client);
char *hc_dns_manage_update_record(hc_http_client_t *client);
char *hc_dns_manage_delete_record(hc_http_client_t *client);
char *hc_dns_manage_get_record_types(hc_http_client_t *client);
char *hc_dns_manage_get_dnssec_flags(hc_http_client_t *client);
char *hc_dns_manage_get_dnssec_records(hc_http_client_t *client);
char *hc_dns_manage_create_dnssec_record(hc_http_client_t *client);
char *hc_dns_manage_delete_dnssec_record(hc_http_client_t *client);
char *hc_dns_manage_register_nameserver(hc_http_client_t *client);

#endif
