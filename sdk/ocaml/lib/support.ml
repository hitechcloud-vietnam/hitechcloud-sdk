(** Support: tickets, departments, news, knowledgebase *)

(** GET /api/tickets - List support tickets *)
let list_tickets client params =
  HttpClient.get client "/api/tickets" params

(** POST /api/tickets - Create new support ticket *)
let create_ticket client params =
  HttpClient.post client "/api/tickets" params

(** GET /api/tickets/{number} - Get ticket details with replies *)
let get_ticket client params =
  HttpClient.get client "/api/tickets/{number}" params

(** POST /api/tickets/{number} - Reply to ticket *)
let reply client params =
  HttpClient.post client "/api/tickets/{number}" params

(** GET /api/ticket/attachment/{file} - Get ticket attachment *)
let get_attachment client params =
  HttpClient.get client "/api/ticket/attachment/{file}" params

(** PUT /api/tickets/{number}/open - Re-open closed ticket *)
let reopen client params =
  HttpClient.put client "/api/tickets/{number}/open" params

(** PUT /api/tickets/{number}/close - Close ticket *)
let close client params =
  HttpClient.put client "/api/tickets/{number}/close" params

(** GET /api/ticket/departments - List ticket departments *)
let list_departments client params =
  HttpClient.get client "/api/ticket/departments" params

(** GET /api/news - List news *)
let list_news client params =
  HttpClient.get client "/api/news" params

(** GET /api/news/{news_id} - Get news item details *)
let get_news client params =
  HttpClient.get client "/api/news/{news_id}" params

(** GET /api/knowledgebase - List knowledgebase categories *)
let list_knowledgebase_categories client params =
  HttpClient.get client "/api/knowledgebase" params

(** GET /api/knowledgebase/{category_id} - Get category with articles *)
let get_knowledgebase_category client params =
  HttpClient.get client "/api/knowledgebase/{category_id}" params

(** GET /api/knowledgebase/article/{article_id} - Get article details *)
let get_knowledgebase_article client params =
  HttpClient.get client "/api/knowledgebase/article/{article_id}" params

