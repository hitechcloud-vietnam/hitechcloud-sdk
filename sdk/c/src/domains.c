#include "hitechcloud/domains.h"
#include <stdlib.h>


/* GET /api/domain - List domains under your account */
char *hc_domains_list(hc_http_client_t *client) {
    return hc_get(client, "/api/domain", NULL);
}

/* GET /api/domain/{id} - Get domain details */
char *hc_domains_get(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}", NULL);
}

/* GET /api/domain/name/{name} - Get domain details by name */
char *hc_domains_get_by_name(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/name/{name}", NULL);
}

/* GET /api/whois/{domain} - WHOIS lookup */
char *hc_domains_whois(hc_http_client_t *client) {
    return hc_get(client, "/api/whois/{domain}", NULL);
}

/* GET /api/whoislookup/{domain} - Perform WHOIS lookup */
char *hc_domains_whois_lookup(hc_http_client_t *client) {
    return hc_get(client, "/api/whoislookup/{domain}", NULL);
}

/* GET /api/domain/availability/{domain} - Check domain availability */
char *hc_domains_check_availability(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/availability/{domain}", NULL);
}

/* GET /api/domain/{id}/ns - Get domain nameservers */
char *hc_domains_get_nameservers(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/ns", NULL);
}

/* PUT /api/domain/{id}/ns - Update domain nameservers */
char *hc_domains_update_nameservers(hc_http_client_t *client) {
    return hc_put(client, "/api/domain/{id}/ns", NULL);
}

/* GET /api/domain/{id}/epp - Get domain EPP code */
char *hc_domains_get_epp_code(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/epp", NULL);
}

/* GET /api/domain/{id}/sync - Synchronize domain */
char *hc_domains_sync(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/sync", NULL);
}

/* GET /api/domain/{id}/reglock - Get domain lock status */
char *hc_domains_get_lock(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/reglock", NULL);
}

/* PUT /api/domain/{id}/reglock - Update domain lock */
char *hc_domains_update_lock(hc_http_client_t *client) {
    return hc_put(client, "/api/domain/{id}/reglock", NULL);
}

/* PUT /api/domain/{id}/idprotection - Update ID protection */
char *hc_domains_update_id_protection(hc_http_client_t *client) {
    return hc_put(client, "/api/domain/{id}/idprotection", NULL);
}

/* GET /api/domain/{id}/contact - Get domain contact info */
char *hc_domains_get_contact(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/contact", NULL);
}

/* PUT /api/domain/{id}/contact - Update domain contact info */
char *hc_domains_update_contact(hc_http_client_t *client) {
    return hc_put(client, "/api/domain/{id}/contact", NULL);
}

/* GET /api/domain/{id}/email/forwarding - Get email forwarding */
char *hc_domains_get_email_forwarding(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/email/forwarding", NULL);
}

/* PUT /api/domain/{id}/email/forwarding - Update email forwarding */
char *hc_domains_update_email_forwarding(hc_http_client_t *client) {
    return hc_put(client, "/api/domain/{id}/email/forwarding", NULL);
}

/* GET /api/domain/order - List available TLDs */
char *hc_domains_get_available_tlds(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/order", NULL);
}

/* POST /api/domain/order - Order new domain */
char *hc_domains_order(hc_http_client_t *client) {
    return hc_post(client, "/api/domain/order", NULL);
}

/* POST /api/domain/{id}/renew - Renew domain */
char *hc_domains_renew(hc_http_client_t *client) {
    return hc_post(client, "/api/domain/{id}/renew", NULL);
}

/* GET /api/domain/order/{id}/form - Get additional data for TLD */
char *hc_domains_get_tld_form(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/order/{id}/form", NULL);
}

/* GET /api/domain/{id}/documents - Get domain documents */
char *hc_domains_get_documents(hc_http_client_t *client) {
    return hc_get(client, "/api/domain/{id}/documents", NULL);
}

