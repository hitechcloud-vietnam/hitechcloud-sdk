#' WillExpired: expiring services and domains management
#' @param http HttpClient object
#' @return Resource object
#' @export
WillExpiredResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "WillExpiredResource"
  env
}

#' GET /api/willexpired - List expiring services and domains
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listExpiring <- function(self, ...) {
  self$http$get("/api/willexpired", list(...))
}

#' GET /api/willexpired/summary - Expiring summary
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getSummary <- function(self, ...) {
  self$http$get("/api/willexpired/summary", list(...))
}

#' GET /api/willexpired/config - Module configuration
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getConfig <- function(self, ...) {
  self$http$get("/api/willexpired/config", list(...))
}

#' GET /api/willexpired/invoices - Open renewal invoices
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listOpenInvoices <- function(self, ...) {
  self$http$get("/api/willexpired/invoices", list(...))
}

#' GET /api/willexpired/requests - Renewal request log
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listRequests <- function(self, ...) {
  self$http$get("/api/willexpired/requests", list(...))
}

#' GET /api/willexpired/export - Export all expiring items
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
exportAll <- function(self, ...) {
  self$http$get("/api/willexpired/export", list(...))
}

#' GET /api/willexpired/{type}/{id} - Get item detail
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getItem <- function(self, ...) {
  self$http$get("/api/willexpired/{type}/{id}", list(...))
}

#' POST /api/willexpired/{type}/{id}/renew - Renew item
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
renew <- function(self, ...) {
  self$http$post("/api/willexpired/{type}/{id}/renew", list(...))
}

#' GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getAutorenew <- function(self, ...) {
  self$http$get("/api/willexpired/{type}/{id}/autorenew", list(...))
}

#' PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setAutorenew <- function(self, ...) {
  self$http$put("/api/willexpired/{type}/{id}/autorenew", list(...))
}

