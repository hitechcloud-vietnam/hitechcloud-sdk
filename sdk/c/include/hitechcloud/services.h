#ifndef HITECHCLOUD_SERVICES_H
#define HITECHCLOUD_SERVICES_H

#include "http_client.h"

/* Services: list, details, cancel, renew, billing cycle */
char *hc_services_list(hc_http_client_t *client);
char *hc_services_get(hc_http_client_t *client);
char *hc_services_list_methods(hc_http_client_t *client);
char *hc_services_cancel(hc_http_client_t *client);
char *hc_services_get_label(hc_http_client_t *client);
char *hc_services_set_label(hc_http_client_t *client);
char *hc_services_renew(hc_http_client_t *client);
char *hc_services_list_billing_cycles(hc_http_client_t *client);
char *hc_services_change_billing_cycle(hc_http_client_t *client);

#endif
