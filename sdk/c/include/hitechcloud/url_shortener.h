#ifndef HITECHCLOUD_URL_SHORTENER_H
#define HITECHCLOUD_URL_SHORTENER_H

#include "http_client.h"

/* URL Shortener: shorten URLs, manage links, stats */
char *hc_url_shortener_shorten(hc_http_client_t *client);
char *hc_url_shortener_list_links(hc_http_client_t *client);
char *hc_url_shortener_get_config(hc_http_client_t *client);
char *hc_url_shortener_get_stats(hc_http_client_t *client);
char *hc_url_shortener_get_link(hc_http_client_t *client);
char *hc_url_shortener_delete_link(hc_http_client_t *client);

#endif
