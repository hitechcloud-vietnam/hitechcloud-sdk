#include "hitechcloud/url_shortener.h"
#include <stdlib.h>


/* POST /api/url-shortener/shorten - Shorten a URL */
char *hc_url_shortener_shorten(hc_http_client_t *client) {
    return hc_post(client, "/api/url-shortener/shorten", NULL);
}

/* GET /api/url-shortener/links - List links */
char *hc_url_shortener_list_links(hc_http_client_t *client) {
    return hc_get(client, "/api/url-shortener/links", NULL);
}

/* GET /api/url-shortener/config - Get shortener config */
char *hc_url_shortener_get_config(hc_http_client_t *client) {
    return hc_get(client, "/api/url-shortener/config", NULL);
}

/* GET /api/url-shortener/stats - Get link stats */
char *hc_url_shortener_get_stats(hc_http_client_t *client) {
    return hc_get(client, "/api/url-shortener/stats", NULL);
}

/* GET /api/url-shortener/links/{id} - Get link details */
char *hc_url_shortener_get_link(hc_http_client_t *client) {
    return hc_get(client, "/api/url-shortener/links/{id}", NULL);
}

/* DELETE /api/url-shortener/links/{id} - Delete link */
char *hc_url_shortener_delete_link(hc_http_client_t *client) {
    return hc_delete(client, "/api/url-shortener/links/{id}", NULL);
}

