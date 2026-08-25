#' Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces
#' @param http HttpClient object
#' @return Resource object
#' @export
CloudServiceResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "CloudServiceResource"
  env
}

#' POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
shutdownVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/shutdown", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
resetVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/reset", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
changeHostname <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/hostname", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/ippool - List IP pools
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listIpPools <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/ippool", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
allocateIp <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/ippool/{pool}", list(...))
}

#' GET /api/service/{id}/networks - List available networks
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listNetworks <- function(self, ...) {
  self$http$get("/api/service/{id}/networks", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addInterface <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/interfaces", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getInterface <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/interfaces/{iface}", list(...))
}

#' PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateInterface <- function(self, ...) {
  self$http$put("/api/service/{id}/vms/{vmid}/interfaces/{iface}", list(...))
}

#' DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
removeInterface <- function(self, ...) {
  self$http$delete("/api/service/{id}/vms/{vmid}/interfaces/{iface}", list(...))
}

