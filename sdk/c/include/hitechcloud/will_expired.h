#ifndef HITECHCLOUD_WILL_EXPIRED_H
#define HITECHCLOUD_WILL_EXPIRED_H

#include "http_client.h"

/* WillExpired: expiring services and domains management */
char *hc_will_expired_list_expiring(hc_http_client_t *client);
char *hc_will_expired_get_summary(hc_http_client_t *client);
char *hc_will_expired_get_config(hc_http_client_t *client);
char *hc_will_expired_list_open_invoices(hc_http_client_t *client);
char *hc_will_expired_list_requests(hc_http_client_t *client);
char *hc_will_expired_export_all(hc_http_client_t *client);
char *hc_will_expired_get_item(hc_http_client_t *client);
char *hc_will_expired_renew(hc_http_client_t *client);
char *hc_will_expired_get_autorenew(hc_http_client_t *client);
char *hc_will_expired_set_autorenew(hc_http_client_t *client);

#endif
