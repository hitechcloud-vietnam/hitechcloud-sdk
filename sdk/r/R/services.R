#' Services: list, details, cancel, renew, billing cycle
#' @param http HttpClient object
#' @return Resource object
#' @export
ServicesResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "ServicesResource"
  env
}

#' GET /api/service - List all services
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
list <- function(self, ...) {
  self$http$get("/api/service", list(...))
}

#' GET /api/service/{id} - Return service details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
get <- function(self, ...) {
  self$http$get("/api/service/{id}", list(...))
}

#' GET /api/service/{id}/methods - List methods available for service
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listMethods <- function(self, ...) {
  self$http$get("/api/service/{id}/methods", list(...))
}

#' POST /api/service/{id}/cancel - Request service cancellation
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
cancel <- function(self, ...) {
  self$http$post("/api/service/{id}/cancel", list(...))
}

#' GET /api/service/{id}/label - Show current service label
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getLabel <- function(self, ...) {
  self$http$get("/api/service/{id}/label", list(...))
}

#' POST /api/service/{id}/label - Set new custom label
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setLabel <- function(self, ...) {
  self$http$post("/api/service/{id}/label", list(...))
}

#' POST /api/service/{id}/renew - Generate renewal invoice
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
renew <- function(self, ...) {
  self$http$post("/api/service/{id}/renew", list(...))
}

#' GET /api/service/{id}/cycle - Get billing cycle options
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listBillingCycles <- function(self, ...) {
  self$http$get("/api/service/{id}/cycle", list(...))
}

#' POST /api/service/{id}/cycle - Change billing cycle
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
changeBillingCycle <- function(self, ...) {
  self$http$post("/api/service/{id}/cycle", list(...))
}

