#include "hitechcloud/will_expired.h"
#include <stdlib.h>


/* GET /api/willexpired - List expiring services and domains */
char *hc_will_expired_list_expiring(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired", NULL);
}

/* GET /api/willexpired/summary - Expiring summary */
char *hc_will_expired_get_summary(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired/summary", NULL);
}

/* GET /api/willexpired/config - Module configuration */
char *hc_will_expired_get_config(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired/config", NULL);
}

/* GET /api/willexpired/invoices - Open renewal invoices */
char *hc_will_expired_list_open_invoices(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired/invoices", NULL);
}

/* GET /api/willexpired/requests - Renewal request log */
char *hc_will_expired_list_requests(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired/requests", NULL);
}

/* GET /api/willexpired/export - Export all expiring items */
char *hc_will_expired_export_all(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired/export", NULL);
}

/* GET /api/willexpired/{type}/{id} - Get item detail */
char *hc_will_expired_get_item(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired/{type}/{id}", NULL);
}

/* POST /api/willexpired/{type}/{id}/renew - Renew item */
char *hc_will_expired_renew(hc_http_client_t *client) {
    return hc_post(client, "/api/willexpired/{type}/{id}/renew", NULL);
}

/* GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status */
char *hc_will_expired_get_autorenew(hc_http_client_t *client) {
    return hc_get(client, "/api/willexpired/{type}/{id}/autorenew", NULL);
}

/* PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew */
char *hc_will_expired_set_autorenew(hc_http_client_t *client) {
    return hc_put(client, "/api/willexpired/{type}/{id}/autorenew", NULL);
}

