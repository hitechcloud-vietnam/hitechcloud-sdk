#' Network Services: IP addresses and reverse DNS for services
#' @param http HttpClient object
#' @return Resource object
#' @export
NetworkServicesResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "NetworkServicesResource"
  env
}

#' GET /api/service/{id}/ip - List Service IP Addresses
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listIps <- function(self, ...) {
  self$http$get("/api/service/{id}/ip", list(...))
}

#' GET /api/service/{id}/rdns - Get reverse DNS entries
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getRdns <- function(self, ...) {
  self$http$get("/api/service/{id}/rdns", list(...))
}

#' POST /api/service/{id}/rdns - Update reverse DNS entries
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateRdns <- function(self, ...) {
  self$http$post("/api/service/{id}/rdns", list(...))
}

