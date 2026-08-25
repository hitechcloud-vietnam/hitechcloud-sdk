(ns hitechcloud.sdk.support
  (:require [hitechcloud.sdk.http-client :as http]))

;; Support: tickets, departments, news, knowledgebase

(defn list_tickets "GET /api/tickets - List support tickets" [client & [params]] (http-get client "/api/tickets" params))

(defn create_ticket "POST /api/tickets - Create new support ticket" [client & [params]] (http-post client "/api/tickets" params))

(defn get_ticket "GET /api/tickets/{number} - Get ticket details with replies" [client & [params]] (http-get client "/api/tickets/{number}" params))

(defn reply "POST /api/tickets/{number} - Reply to ticket" [client & [params]] (http-post client "/api/tickets/{number}" params))

(defn get_attachment "GET /api/ticket/attachment/{file} - Get ticket attachment" [client & [params]] (http-get client "/api/ticket/attachment/{file}" params))

(defn reopen "PUT /api/tickets/{number}/open - Re-open closed ticket" [client & [params]] (http-put client "/api/tickets/{number}/open" params))

(defn close "PUT /api/tickets/{number}/close - Close ticket" [client & [params]] (http-put client "/api/tickets/{number}/close" params))

(defn list_departments "GET /api/ticket/departments - List ticket departments" [client & [params]] (http-get client "/api/ticket/departments" params))

(defn list_news "GET /api/news - List news" [client & [params]] (http-get client "/api/news" params))

(defn get_news "GET /api/news/{news_id} - Get news item details" [client & [params]] (http-get client "/api/news/{news_id}" params))

(defn list_knowledgebase_categories "GET /api/knowledgebase - List knowledgebase categories" [client & [params]] (http-get client "/api/knowledgebase" params))

(defn get_knowledgebase_category "GET /api/knowledgebase/{category_id} - Get category with articles" [client & [params]] (http-get client "/api/knowledgebase/{category_id}" params))

(defn get_knowledgebase_article "GET /api/knowledgebase/article/{article_id} - Get article details" [client & [params]] (http-get client "/api/knowledgebase/article/{article_id}" params))

