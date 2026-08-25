#' Virtualizor: VPS management via Virtualizor panel
#' @param http HttpClient object
#' @return Resource object
#' @export
VirtualizorResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "VirtualizorResource"
  env
}

#' POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
suspend <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/suspend", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
unsuspend <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/unsuspend", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listRebuildTemplates <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/rebuild", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
changeSshKey <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/addsshkey", list(...))
}

