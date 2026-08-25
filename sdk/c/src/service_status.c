#include "hitechcloud/service_status.h"
#include <stdlib.h>


/* GET /api/statuses - Returns a list of all statuses */
char *hc_service_status_list(hc_http_client_t *client) {
    return hc_get(client, "/api/statuses", NULL);
}

/* PUT /api/statuses/{id} - Returns details of status */
char *hc_service_status_get(hc_http_client_t *client) {
    return hc_put(client, "/api/statuses/{id}", NULL);
}

