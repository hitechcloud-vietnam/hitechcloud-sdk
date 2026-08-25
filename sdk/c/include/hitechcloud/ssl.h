#ifndef HITECHCLOUD_SSL_H
#define HITECHCLOUD_SSL_H

#include "http_client.h"

/* SSL Certificates: list, order, download certificates */
char *hc_ssl_list(hc_http_client_t *client);
char *hc_ssl_get(hc_http_client_t *client);
char *hc_ssl_download(hc_http_client_t *client);
char *hc_ssl_list_available(hc_http_client_t *client);
char *hc_ssl_order(hc_http_client_t *client);
char *hc_ssl_list_server_software(hc_http_client_t *client);

#endif
