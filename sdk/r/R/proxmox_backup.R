#' Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token
#' @param http HttpClient object
#' @return Resource object
#' @export
ProxmoxBackupResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "ProxmoxBackupResource"
  env
}

#' GET /api/service/{id}/pbs - Get backup connection info
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getConnectionInfo <- function(self, ...) {
  self$http$get("/api/service/{id}/pbs", list(...))
}

#' GET /api/service/{id}/pbs/credentials - Get backup credentials
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCredentials <- function(self, ...) {
  self$http$get("/api/service/{id}/pbs/credentials", list(...))
}

#' GET /api/service/{id}/pbs/usage - Get backup usage
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/pbs/usage", list(...))
}

#' GET /api/service/{id}/pbs/metrics - Get backup metrics
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getMetrics <- function(self, ...) {
  self$http$get("/api/service/{id}/pbs/metrics", list(...))
}

#' GET /api/service/{id}/pbs/snapshots - List snapshots
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listSnapshots <- function(self, ...) {
  self$http$get("/api/service/{id}/pbs/snapshots", list(...))
}

#' GET /api/service/{id}/pbs/groups - List backup groups
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listGroups <- function(self, ...) {
  self$http$get("/api/service/{id}/pbs/groups", list(...))
}

#' POST /api/service/{id}/pbs/password - Change backup password
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
changePassword <- function(self, ...) {
  self$http$post("/api/service/{id}/pbs/password", list(...))
}

#' POST /api/service/{id}/pbs/token - Rotate API token
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rotateToken <- function(self, ...) {
  self$http$post("/api/service/{id}/pbs/token", list(...))
}

#' DELETE /api/service/{id}/pbs/token - Revoke API token
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
revokeToken <- function(self, ...) {
  self$http$delete("/api/service/{id}/pbs/token", list(...))
}

