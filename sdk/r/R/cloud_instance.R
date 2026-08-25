#' Cloud Instance: full VM lifecycle management
#' @param http HttpClient object
#' @return Resource object
#' @export
CloudInstanceResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "CloudInstanceResource"
  env
}

#' GET /api/service/{id}/vms - List virtual servers
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listVms <- function(self, ...) {
  self$http$get("/api/service/{id}/vms", list(...))
}

#' POST /api/service/{id}/vms - Create new virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms", list(...))
}

#' GET /api/service/{id}/vms/{vmid} - Get VM details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getVm <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}", list(...))
}

#' DELETE /api/service/{id}/vms/{vmid} - Remove virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
destroyVm <- function(self, ...) {
  self$http$delete("/api/service/{id}/vms/{vmid}", list(...))
}

#' PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
resizeVm <- function(self, ...) {
  self$http$put("/api/service/{id}/vms/{vmid}", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
stopVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/stop", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/start - Start virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
startVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/start", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rebootVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/reboot", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
resetPassword <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/resetpwd", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rebuildVm <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/rebuild", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listVmIps <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/ips", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
assignIp <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/ips", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listInterfaces <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/interfaces", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCpuUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/usage/cpu", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getNetworkUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/usage/net", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getDiskUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/usage/disk", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listDisks <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/storage", list(...))
}

#' PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
resizeDisk <- function(self, ...) {
  self$http$put("/api/service/{id}/vms/{vmid}/storage/{diskid}", list(...))
}

#' GET /api/service/{id}/images - List ISO images
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listIsoImages <- function(self, ...) {
  self$http$get("/api/service/{id}/images", list(...))
}

#' POST /api/service/{id}/images - Add ISO image
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addIsoImage <- function(self, ...) {
  self$http$post("/api/service/{id}/images", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listAvailableIps <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips", list(...))
}

#' DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
removeIp <- function(self, ...) {
  self$http$delete("/api/service/{id}/vms/{vmid}/ips/{ipid}", list(...))
}

#' GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getRdns <- function(self, ...) {
  self$http$get("/api/service/{id}/vms/{vmid}/rdns", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateRdns <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/rdns", list(...))
}

#' POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rebuildNetwork <- function(self, ...) {
  self$http$post("/api/service/{id}/vms/{vmid}/rebuild_network", list(...))
}

