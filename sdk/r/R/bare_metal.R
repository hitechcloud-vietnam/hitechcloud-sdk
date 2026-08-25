#' Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power
#' @param http HttpClient object
#' @return Resource object
#' @export
BareMetalResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "BareMetalResource"
  env
}

#' GET /api/service/{id}/reinstall/templates - List OS templates and recipes
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listReinstallTemplates <- function(self, ...) {
  self$http$get("/api/service/{id}/reinstall/templates", list(...))
}

#' POST /api/service/{id}/diag/cancel - Cancel diagnostics operation
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
cancelDiagnostics <- function(self, ...) {
  self$http$post("/api/service/{id}/diag/cancel", list(...))
}

#' GET /api/service/{id}/diag/templates - List diagnostics templates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listDiagnosticsTemplates <- function(self, ...) {
  self$http$get("/api/service/{id}/diag/templates", list(...))
}

#' GET /api/service/{id}/diag - Show diagnostic operation status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getDiagnosticsStatus <- function(self, ...) {
  self$http$get("/api/service/{id}/diag", list(...))
}

#' POST /api/service/{id}/diag - Start new diagnostic operation
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
runDiagnostics <- function(self, ...) {
  self$http$post("/api/service/{id}/diag", list(...))
}

#' GET /api/service/{id}/rescue/templates - List rescue templates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listRescueTemplates <- function(self, ...) {
  self$http$get("/api/service/{id}/rescue/templates", list(...))
}

#' GET /api/service/{id}/rescue - Show rescue operation status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getRescueStatus <- function(self, ...) {
  self$http$get("/api/service/{id}/rescue", list(...))
}

#' POST /api/service/{id}/rescue - Start rescue operation
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rescue <- function(self, ...) {
  self$http$post("/api/service/{id}/rescue", list(...))
}

#' POST /api/service/{id}/rescue/cancel - Cancel rescue operation
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
cancelRescue <- function(self, ...) {
  self$http$post("/api/service/{id}/rescue/cancel", list(...))
}

#' GET /api/service/{id}/info - Get server hardware and OS details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getServerInfo <- function(self, ...) {
  self$http$get("/api/service/{id}/info", list(...))
}

#' POST /api/service/{id}/hostname - Update server hostname
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateHostname <- function(self, ...) {
  self$http$post("/api/service/{id}/hostname", list(...))
}

#' GET /api/service/{id}/ips - List server IPs
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listIps <- function(self, ...) {
  self$http$get("/api/service/{id}/ips", list(...))
}

#' POST /api/service/{id}/ips - Add new IP to server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addIp <- function(self, ...) {
  self$http$post("/api/service/{id}/ips", list(...))
}

#' GET /api/service/{id}/vlans - List available VLANs
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listVlans <- function(self, ...) {
  self$http$get("/api/service/{id}/vlans", list(...))
}

#' GET /api/service/{id}/ips/{ip} - Get IP details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getIpDetails <- function(self, ...) {
  self$http$get("/api/service/{id}/ips/{ip}", list(...))
}

#' PUT /api/service/{id}/ips/{ip} - Edit IP
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
editIp <- function(self, ...) {
  self$http$put("/api/service/{id}/ips/{ip}", list(...))
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

#' POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
powerAction <- function(self, ...) {
  self$http$post("/api/service/{id}/power/{action}", list(...))
}

#' GET /api/serverstock - List servers in stock
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listServersInStock <- function(self, ...) {
  self$http$get("/api/serverstock", list(...))
}

