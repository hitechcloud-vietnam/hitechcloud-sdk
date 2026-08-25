#' HiTechCloudIPAM: IP addresses, subnets, reverse DNS
#' @param http HttpClient object
#' @return Resource object
#' @export
IpamResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "IpamResource"
  env
}

#' GET /api/service/{id}/htcipam/ips - List IP addresses
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listIps <- function(self, ...) {
  self$http$get("/api/service/{id}/htcipam/ips", list(...))
}

#' GET /api/service/{id}/htcipam/subnets - List subnets
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listSubnets <- function(self, ...) {
  self$http$get("/api/service/{id}/htcipam/subnets", list(...))
}

#' GET /api/service/{id}/htcipam/rdns - List reverse DNS records
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listRdns <- function(self, ...) {
  self$http$get("/api/service/{id}/htcipam/rdns", list(...))
}

#' POST /api/service/{id}/htcipam/rdns - Set reverse DNS
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setRdns <- function(self, ...) {
  self$http$post("/api/service/{id}/htcipam/rdns", list(...))
}

