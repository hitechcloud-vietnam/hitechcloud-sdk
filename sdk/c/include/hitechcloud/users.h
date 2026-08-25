#ifndef HITECHCLOUD_USERS_H
#define HITECHCLOUD_USERS_H

#include "http_client.h"

/* User Profile: view/update account details, logs */
char *hc_users_get_details(hc_http_client_t *client);
char *hc_users_update_details(hc_http_client_t *client);
char *hc_users_get_logs(hc_http_client_t *client);

#endif
