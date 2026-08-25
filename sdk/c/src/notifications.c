#include "hitechcloud/notifications.h"
#include <stdlib.h>


/* GET /api/notifications - List all notifications */
char *hc_notifications_list(hc_http_client_t *client) {
    return hc_get(client, "/api/notifications", NULL);
}

/* GET /api/notifications/new - Return only new portal notifications */
char *hc_notifications_list_new(hc_http_client_t *client) {
    return hc_get(client, "/api/notifications/new", NULL);
}

/* PUT /api/notifications/{id}/ack - Mark notification as read */
char *hc_notifications_acknowledge(hc_http_client_t *client) {
    return hc_put(client, "/api/notifications/{id}/ack", NULL);
}

