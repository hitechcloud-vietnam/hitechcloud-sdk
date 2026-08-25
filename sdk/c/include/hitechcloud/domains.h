#ifndef HITECHCLOUD_DOMAINS_H
#define HITECHCLOUD_DOMAINS_H

#include "http_client.h"

/* Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding */
char *hc_domains_list(hc_http_client_t *client);
char *hc_domains_get(hc_http_client_t *client);
char *hc_domains_get_by_name(hc_http_client_t *client);
char *hc_domains_whois(hc_http_client_t *client);
char *hc_domains_whois_lookup(hc_http_client_t *client);
char *hc_domains_check_availability(hc_http_client_t *client);
char *hc_domains_get_nameservers(hc_http_client_t *client);
char *hc_domains_update_nameservers(hc_http_client_t *client);
char *hc_domains_get_epp_code(hc_http_client_t *client);
char *hc_domains_sync(hc_http_client_t *client);
char *hc_domains_get_lock(hc_http_client_t *client);
char *hc_domains_update_lock(hc_http_client_t *client);
char *hc_domains_update_id_protection(hc_http_client_t *client);
char *hc_domains_get_contact(hc_http_client_t *client);
char *hc_domains_update_contact(hc_http_client_t *client);
char *hc_domains_get_email_forwarding(hc_http_client_t *client);
char *hc_domains_update_email_forwarding(hc_http_client_t *client);
char *hc_domains_get_available_tlds(hc_http_client_t *client);
char *hc_domains_order(hc_http_client_t *client);
char *hc_domains_renew(hc_http_client_t *client);
char *hc_domains_get_tld_form(hc_http_client_t *client);
char *hc_domains_get_documents(hc_http_client_t *client);

#endif
