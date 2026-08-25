#' DNS: zones and records management for services
#' @param http HttpClient object
#' @return Resource object
#' @export
DnsResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "DnsResource"
  env
}

#' GET /api/dns - List all DNS zones
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
list <- function(self, ...) {
  self$http$get("/api/dns", list(...))
}

#' GET /api/service/{service_id}/dns - List DNS zones for service
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listForService <- function(self, ...) {
  self$http$get("/api/service/{service_id}/dns", list(...))
}

#' POST /api/service/{service_id}/dns - Create DNS zone
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addZone <- function(self, ...) {
  self$http$post("/api/service/{service_id}/dns", list(...))
}

#' GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getZone <- function(self, ...) {
  self$http$get("/api/service/{service_id}/dns/{zone_id}", list(...))
}

#' DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteZone <- function(self, ...) {
  self$http$delete("/api/service/{service_id}/dns/{zone_id}", list(...))
}

#' POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
addRecord <- function(self, ...) {
  self$http$post("/api/service/{service_id}/dns/{zone_id}/records", list(...))
}

#' PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
editRecord <- function(self, ...) {
  self$http$put("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", list(...))
}

#' DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteRecord <- function(self, ...) {
  self$http$delete("/api/service/{service_id}/dns/{zone_id}/records/{record_id}", list(...))
}

