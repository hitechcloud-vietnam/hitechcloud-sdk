#ifndef HITECHCLOUD_SUPPORT_H
#define HITECHCLOUD_SUPPORT_H

#include "http_client.h"

/* Support: tickets, departments, news, knowledgebase */
char *hc_support_list_tickets(hc_http_client_t *client);
char *hc_support_create_ticket(hc_http_client_t *client);
char *hc_support_get_ticket(hc_http_client_t *client);
char *hc_support_reply(hc_http_client_t *client);
char *hc_support_get_attachment(hc_http_client_t *client);
char *hc_support_reopen(hc_http_client_t *client);
char *hc_support_close(hc_http_client_t *client);
char *hc_support_list_departments(hc_http_client_t *client);
char *hc_support_list_news(hc_http_client_t *client);
char *hc_support_get_news(hc_http_client_t *client);
char *hc_support_list_knowledgebase_categories(hc_http_client_t *client);
char *hc_support_get_knowledgebase_category(hc_http_client_t *client);
char *hc_support_get_knowledgebase_article(hc_http_client_t *client);

#endif
