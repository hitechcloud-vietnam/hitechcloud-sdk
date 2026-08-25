#' Cloud GPU: GPU instance management
#' @param http HttpClient object
#' @return Resource object
#' @export
CloudGpuResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "CloudGpuResource"
  env
}

#' PUT /api/service/{id}/vms/reboot - Reboot virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
reboot <- function(self, ...) {
  self$http$put("/api/service/{id}/vms/reboot", list(...))
}

#' PUT /api/service/{id}/vms/stop - Stop virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
stop <- function(self, ...) {
  self$http$put("/api/service/{id}/vms/stop", list(...))
}

#' PUT /api/service/{id}/vms/start - Start virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
start <- function(self, ...) {
  self$http$put("/api/service/{id}/vms/start", list(...))
}

#' GET /api/service/{id}/vms/firewall - Get firewall rules
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getFirewallRules <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/firewall", list(...))
}

#' POST /api/service/{id}/vms/firewall - Add firewall rules
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addFirewallRules <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/firewall", list(...))
}

#' DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
removeFirewallRule <- function(self, ...) {
  self$http$delete("/api/service/{id}/vms/firewall/{position}", list(...))
}

