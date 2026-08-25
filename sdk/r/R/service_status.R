#' Service Status: list and manage service statuses
#' @param http HttpClient object
#' @return Resource object
#' @export
ServiceStatusResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "ServiceStatusResource"
  env
}

#' GET /api/statuses - Returns a list of all statuses
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
list <- function(self, ...) {
  self$http$get("/api/statuses", list(...))
}

#' PUT /api/statuses/{id} - Returns details of status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
get <- function(self, ...) {
  self$http$put("/api/statuses/{id}", list(...))
}

