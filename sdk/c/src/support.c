#include "hitechcloud/support.h"
#include <stdlib.h>


/* GET /api/tickets - List support tickets */
char *hc_support_list_tickets(hc_http_client_t *client) {
    return hc_get(client, "/api/tickets", NULL);
}

/* POST /api/tickets - Create new support ticket */
char *hc_support_create_ticket(hc_http_client_t *client) {
    return hc_post(client, "/api/tickets", NULL);
}

/* GET /api/tickets/{number} - Get ticket details with replies */
char *hc_support_get_ticket(hc_http_client_t *client) {
    return hc_get(client, "/api/tickets/{number}", NULL);
}

/* POST /api/tickets/{number} - Reply to ticket */
char *hc_support_reply(hc_http_client_t *client) {
    return hc_post(client, "/api/tickets/{number}", NULL);
}

/* GET /api/ticket/attachment/{file} - Get ticket attachment */
char *hc_support_get_attachment(hc_http_client_t *client) {
    return hc_get(client, "/api/ticket/attachment/{file}", NULL);
}

/* PUT /api/tickets/{number}/open - Re-open closed ticket */
char *hc_support_reopen(hc_http_client_t *client) {
    return hc_put(client, "/api/tickets/{number}/open", NULL);
}

/* PUT /api/tickets/{number}/close - Close ticket */
char *hc_support_close(hc_http_client_t *client) {
    return hc_put(client, "/api/tickets/{number}/close", NULL);
}

/* GET /api/ticket/departments - List ticket departments */
char *hc_support_list_departments(hc_http_client_t *client) {
    return hc_get(client, "/api/ticket/departments", NULL);
}

/* GET /api/news - List news */
char *hc_support_list_news(hc_http_client_t *client) {
    return hc_get(client, "/api/news", NULL);
}

/* GET /api/news/{news_id} - Get news item details */
char *hc_support_get_news(hc_http_client_t *client) {
    return hc_get(client, "/api/news/{news_id}", NULL);
}

/* GET /api/knowledgebase - List knowledgebase categories */
char *hc_support_list_knowledgebase_categories(hc_http_client_t *client) {
    return hc_get(client, "/api/knowledgebase", NULL);
}

/* GET /api/knowledgebase/{category_id} - Get category with articles */
char *hc_support_get_knowledgebase_category(hc_http_client_t *client) {
    return hc_get(client, "/api/knowledgebase/{category_id}", NULL);
}

/* GET /api/knowledgebase/article/{article_id} - Get article details */
char *hc_support_get_knowledgebase_article(hc_http_client_t *client) {
    return hc_get(client, "/api/knowledgebase/article/{article_id}", NULL);
}

