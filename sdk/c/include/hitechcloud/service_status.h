#ifndef HITECHCLOUD_SERVICE_STATUS_H
#define HITECHCLOUD_SERVICE_STATUS_H

#include "http_client.h"

/* Service Status: list and manage service statuses */
char *hc_service_status_list(hc_http_client_t *client);
char *hc_service_status_get(hc_http_client_t *client);

#endif
