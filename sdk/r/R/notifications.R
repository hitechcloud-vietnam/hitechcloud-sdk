#' Notifications: manage notification preferences
#' @param http HttpClient object
#' @return Resource object
#' @export
NotificationsResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "NotificationsResource"
  env
}

#' GET /api/notifications - List all notifications
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
list <- function(self, ...) {
  self$http$get("/api/notifications", list(...))
}

#' GET /api/notifications/new - Return only new portal notifications
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listNew <- function(self, ...) {
  self$http$get("/api/notifications/new", list(...))
}

#' PUT /api/notifications/{id}/ack - Mark notification as read
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
acknowledge <- function(self, ...) {
  self$http$put("/api/notifications/{id}/ack", list(...))
}

