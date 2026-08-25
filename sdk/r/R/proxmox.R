#' HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth
#' @param http HttpClient object
#' @return Resource object
#' @export
ProxmoxResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "ProxmoxResource"
  env
}

#' GET /api/service/{id}/htcpve/status - Get machine status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getStatus <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpve/status", list(...))
}

#' POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
powerAction <- function(self, ...) {
  self$http$post("/api/service/{id}/htcpve/power", list(...))
}

#' GET /api/service/{id}/htcpve/vms - List machines
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listVms <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpve/vms", list(...))
}

#' GET /api/service/{id}/htcpve/ips - List addresses
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listIps <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpve/ips", list(...))
}

#' POST /api/service/{id}/htcpve/rdns - Set reverse DNS
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setRdns <- function(self, ...) {
  self$http$post("/api/service/{id}/htcpve/rdns", list(...))
}

#' GET /api/service/{id}/htcpve/backups - List backups
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listBackups <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpve/backups", list(...))
}

#' POST /api/service/{id}/htcpve/backups - Create backup
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createBackup <- function(self, ...) {
  self$http$post("/api/service/{id}/htcpve/backups", list(...))
}

#' GET /api/service/{id}/htcpve/snapshots - List snapshots
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listSnapshots <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpve/snapshots", list(...))
}

#' POST /api/service/{id}/htcpve/snapshots - Create snapshot
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createSnapshot <- function(self, ...) {
  self$http$post("/api/service/{id}/htcpve/snapshots", list(...))
}

#' GET /api/service/{id}/htcpve/usage - Get bandwidth usage
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getBandwidthUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/htcpve/usage", list(...))
}

