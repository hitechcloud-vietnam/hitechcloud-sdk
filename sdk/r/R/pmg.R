#' HiTechCloudPMG: mail filtering configuration and management
#' @param http HttpClient object
#' @return Resource object
#' @export
PmgResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "PmgResource"
  env
}

#' GET /api/service/{id}/htcpmg/config - Get mail filtering configuration
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getConfig <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpmg/config", list(...))
}

#' POST /api/service/{id}/htcpmg/domains - Add a domain
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addDomain <- function(self, ...) {
  self$http$post("/api/service/{id}/htcpmg/domains", list(...))
}

#' POST /api/service/{id}/htcpmg/transport - Set target mail server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setTransport <- function(self, ...) {
  self$http$post("/api/service/{id}/htcpmg/transport", list(...))
}

#' GET /api/service/{id}/htcpmg/stats - Get mail statistics
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getStats <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpmg/stats", list(...))
}

