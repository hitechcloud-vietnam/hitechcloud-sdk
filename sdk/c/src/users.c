#include "hitechcloud/users.h"
#include <stdlib.h>


/* GET /api/details - Return registration details for my account */
char *hc_users_get_details(hc_http_client_t *client) {
    return hc_get(client, "/api/details", NULL);
}

/* PUT /api/details - Update registration details */
char *hc_users_update_details(hc_http_client_t *client) {
    return hc_put(client, "/api/details", NULL);
}

/* GET /api/logs - Returns logs from history */
char *hc_users_get_logs(hc_http_client_t *client) {
    return hc_get(client, "/api/logs", NULL);
}

