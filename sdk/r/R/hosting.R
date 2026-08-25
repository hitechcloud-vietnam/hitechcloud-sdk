#' Hosting Services: reinstall, status, bandwidth, reset
#' @param http HttpClient object
#' @return Resource object
#' @export
HostingResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "HostingResource"
  env
}

#' GET /api/service/{id}/reinstall - Return installation options
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getReinstallDetails <- function(self, ...) {
  self$http$get("/api/service/{id}/reinstall", list(...))
}

#' POST /api/service/{id}/reinstall - Reinstall server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
reinstall <- function(self, ...) {
  self$http$post("/api/service/{id}/reinstall", list(...))
}

#' GET /api/service/{id}/status - Return server power status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getStatus <- function(self, ...) {
  self$http$get("/api/service/{id}/status", list(...))
}

#' GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getBandwidthGraphs <- function(self, ...) {
  self$http$get("/api/service/{id}/bandwidth-graphs", list(...))
}

#' GET /api/service/{id}/bandwidth - Return bandwidth usage and billing
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getBandwidthUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/bandwidth", list(...))
}

#' POST /api/service/{id}/reset - Reset server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
reset <- function(self, ...) {
  self$http$post("/api/service/{id}/reset", list(...))
}

