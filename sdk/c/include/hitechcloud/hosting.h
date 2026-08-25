#ifndef HITECHCLOUD_HOSTING_H
#define HITECHCLOUD_HOSTING_H

#include "http_client.h"

/* Hosting Services: reinstall, status, bandwidth, reset */
char *hc_hosting_get_reinstall_details(hc_http_client_t *client);
char *hc_hosting_reinstall(hc_http_client_t *client);
char *hc_hosting_get_status(hc_http_client_t *client);
char *hc_hosting_get_bandwidth_graphs(hc_http_client_t *client);
char *hc_hosting_get_bandwidth_usage(hc_http_client_t *client);
char *hc_hosting_reset(hc_http_client_t *client);

#endif
