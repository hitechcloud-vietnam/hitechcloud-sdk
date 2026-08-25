#ifndef HITECHCLOUD_NETWORK_SERVICES_H
#define HITECHCLOUD_NETWORK_SERVICES_H

#include "http_client.h"

/* Network Services: IP addresses and reverse DNS for services */
char *hc_network_services_list_ips(hc_http_client_t *client);
char *hc_network_services_get_rdns(hc_http_client_t *client);
char *hc_network_services_update_rdns(hc_http_client_t *client);

#endif
