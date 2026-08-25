#' Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE
#' @param http HttpClient object
#' @return Resource object
#' @export
CloudVmResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "CloudVmResource"
  env
}

#' GET /api/service/{id}/upgrade - List resource upgrade options
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getUpgradeOptions <- function(self, ...) {
  self$http$get("/api/service/{id}/upgrade", list(...))
}

#' POST /api/service/{id}/upgrade - Estimate or request upgrade
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
requestUpgrade <- function(self, ...) {
  self$http$post("/api/service/{id}/upgrade", list(...))
}

#' GET /api/service/{id}/resources - Show available and used resources
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getResources <- function(self, ...) {
  self$http$get("/api/service/{id}/resources", list(...))
}

#' GET /api/service/{id}/templates/{vmid} - List rebuild templates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listRebuildTemplates <- function(self, ...) {
  self$http$get("/api/service/{id}/templates/{vmid}", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getMemoryUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/usage/memory", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listIsoImages <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/images", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
mountIso <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/images", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/boot - Change boot order
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setBootOrder <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/boot", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
enablePxe <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/tuntap", list(...))
}

