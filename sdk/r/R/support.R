#' Support: tickets, departments, news, knowledgebase
#' @param http HttpClient object
#' @return Resource object
#' @export
SupportResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "SupportResource"
  env
}

#' GET /api/tickets - List support tickets
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listTickets <- function(self, ...) {
  self$http$get("/api/tickets", list(...))
}

#' POST /api/tickets - Create new support ticket
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createTicket <- function(self, ...) {
  self$http$post("/api/tickets", list(...))
}

#' GET /api/tickets/{number} - Get ticket details with replies
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getTicket <- function(self, ...) {
  self$http$get("/api/tickets/{number}", list(...))
}

#' POST /api/tickets/{number} - Reply to ticket
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
reply <- function(self, ...) {
  self$http$post("/api/tickets/{number}", list(...))
}

#' GET /api/ticket/attachment/{file} - Get ticket attachment
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getAttachment <- function(self, ...) {
  self$http$get("/api/ticket/attachment/{file}", list(...))
}

#' PUT /api/tickets/{number}/open - Re-open closed ticket
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
reopen <- function(self, ...) {
  self$http$put("/api/tickets/{number}/open", list(...))
}

#' PUT /api/tickets/{number}/close - Close ticket
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
close <- function(self, ...) {
  self$http$put("/api/tickets/{number}/close", list(...))
}

#' GET /api/ticket/departments - List ticket departments
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listDepartments <- function(self, ...) {
  self$http$get("/api/ticket/departments", list(...))
}

#' GET /api/news - List news
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listNews <- function(self, ...) {
  self$http$get("/api/news", list(...))
}

#' GET /api/news/{news_id} - Get news item details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getNews <- function(self, ...) {
  self$http$get("/api/news/{news_id}", list(...))
}

#' GET /api/knowledgebase - List knowledgebase categories
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listKnowledgebaseCategories <- function(self, ...) {
  self$http$get("/api/knowledgebase", list(...))
}

#' GET /api/knowledgebase/{category_id} - Get category with articles
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getKnowledgebaseCategory <- function(self, ...) {
  self$http$get("/api/knowledgebase/{category_id}", list(...))
}

#' GET /api/knowledgebase/article/{article_id} - Get article details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getKnowledgebaseArticle <- function(self, ...) {
  self$http$get("/api/knowledgebase/article/{article_id}", list(...))
}

