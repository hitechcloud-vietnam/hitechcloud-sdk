#' Collocation Services: PDU port management
#' @param http HttpClient object
#' @return Resource object
#' @export
CollocationResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "CollocationResource"
  env
}

#' GET /api/service/{id}/pdu - List PDU ports assigned to service
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listPduPorts <- function(self, ...) {
  self$http$get("/api/service/{id}/pdu", list(...))
}

#' GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getPduPortState <- function(self, ...) {
  self$http$get("/api/service/{id}/pdu/{port}", list(...))
}

#' POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setPduPortStatus <- function(self, ...) {
  self$http$post("/api/service/{id}/pdu/{port}", list(...))
}

