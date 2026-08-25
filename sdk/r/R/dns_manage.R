#' DNS Manage: domain DNS records, DNSSEC, nameserver registration
#' @param http HttpClient object
#' @return Resource object
#' @export
DnsManageResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "DnsManageResource"
  env
}

#' GET /api/domain/{id}/dns - List DNS records
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getRecords <- function(self, ...) {
  self$http$get("/api/domain/{id}/dns", list(...))
}

#' POST /api/domain/{id}/dns - Create DNS record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createRecord <- function(self, ...) {
  self$http$post("/api/domain/{id}/dns", list(...))
}

#' PUT /api/domain/{id}/dns/{index} - Update DNS record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateRecord <- function(self, ...) {
  self$http$put("/api/domain/{id}/dns/{index}", list(...))
}

#' DELETE /api/domain/{id}/dns/{index} - Remove DNS record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteRecord <- function(self, ...) {
  self$http$delete("/api/domain/{id}/dns/{index}", list(...))
}

#' GET /api/domain/{id}/dns/types - List supported record types
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getRecordTypes <- function(self, ...) {
  self$http$get("/api/domain/{id}/dns/types", list(...))
}

#' GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getDnssecFlags <- function(self, ...) {
  self$http$get("/api/domain/{id}/dnssec/flags", list(...))
}

#' GET /api/domain/{id}/dnssec - Get DNSSEC records
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getDnssecRecords <- function(self, ...) {
  self$http$get("/api/domain/{id}/dnssec", list(...))
}

#' POST /api/domain/{id}/dnssec - Create DNSSEC record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createDnssecRecord <- function(self, ...) {
  self$http$post("/api/domain/{id}/dnssec", list(...))
}

#' DELETE /api/domain/{id}/dnssec - Remove DNSSEC record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteDnssecRecord <- function(self, ...) {
  self$http$delete("/api/domain/{id}/dnssec", list(...))
}

#' POST /api/domain/{id}/reg - Register domain nameserver
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
registerNameserver <- function(self, ...) {
  self$http$post("/api/domain/{id}/reg", list(...))
}

