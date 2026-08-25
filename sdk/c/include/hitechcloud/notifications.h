#ifndef HITECHCLOUD_NOTIFICATIONS_H
#define HITECHCLOUD_NOTIFICATIONS_H

#include "http_client.h"

/* Notifications: manage notification preferences */
char *hc_notifications_list(hc_http_client_t *client);
char *hc_notifications_list_new(hc_http_client_t *client);
char *hc_notifications_acknowledge(hc_http_client_t *client);

#endif
