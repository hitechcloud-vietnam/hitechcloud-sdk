#!/usr/bin/env bash
# Support: tickets, departments, news, knowledgebase
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/tickets - List support tickets
list-tickets() {
    hc_get "/api/tickets" "$@"
}

# POST /api/tickets - Create new support ticket
create-ticket() {
    hc_post "/api/tickets" "$@"
}

# GET /api/tickets/{number} - Get ticket details with replies
get-ticket() {
    hc_get "/api/tickets/{number}" "$@"
}

# POST /api/tickets/{number} - Reply to ticket
reply() {
    hc_post "/api/tickets/{number}" "$@"
}

# GET /api/ticket/attachment/{file} - Get ticket attachment
get-attachment() {
    hc_get "/api/ticket/attachment/{file}" "$@"
}

# PUT /api/tickets/{number}/open - Re-open closed ticket
reopen() {
    hc_put "/api/tickets/{number}/open" "$@"
}

# PUT /api/tickets/{number}/close - Close ticket
close() {
    hc_put "/api/tickets/{number}/close" "$@"
}

# GET /api/ticket/departments - List ticket departments
list-departments() {
    hc_get "/api/ticket/departments" "$@"
}

# GET /api/news - List news
list-news() {
    hc_get "/api/news" "$@"
}

# GET /api/news/{news_id} - Get news item details
get-news() {
    hc_get "/api/news/{news_id}" "$@"
}

# GET /api/knowledgebase - List knowledgebase categories
list-knowledgebase-categories() {
    hc_get "/api/knowledgebase" "$@"
}

# GET /api/knowledgebase/{category_id} - Get category with articles
get-knowledgebase-category() {
    hc_get "/api/knowledgebase/{category_id}" "$@"
}

# GET /api/knowledgebase/article/{article_id} - Get article details
get-knowledgebase-article() {
    hc_get "/api/knowledgebase/article/{article_id}" "$@"
}

