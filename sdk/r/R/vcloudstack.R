#' vCloudStack Public Cloud: rescue, unrescue, console, usage
#' @param http HttpClient object
#' @return Resource object
#' @export
VCloudStackResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "VCloudStackResource"
  env
}

#' POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rescueVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/rescue", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
unrescueVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/unrescue", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/console - Get VM console
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getConsole <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/console", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/usage", list(...))
}

