#' Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding
#' @param http HttpClient object
#' @return Resource object
#' @export
DomainsResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "DomainsResource"
  env
}

#' GET /api/domain - List domains under your account
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
list <- function(self, ...) {
  self$http$get("/api/domain", list(...))
}

#' GET /api/domain/{id} - Get domain details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
get <- function(self, ...) {
  self$http$get("/api/domain/{id}", list(...))
}

#' GET /api/domain/name/{name} - Get domain details by name
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getByName <- function(self, ...) {
  self$http$get("/api/domain/name/{name}", list(...))
}

#' GET /api/whois/{domain} - WHOIS lookup
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
whois <- function(self, ...) {
  self$http$get("/api/whois/{domain}", list(...))
}

#' GET /api/whoislookup/{domain} - Perform WHOIS lookup
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
whoisLookup <- function(self, ...) {
  self$http$get("/api/whoislookup/{domain}", list(...))
}

#' GET /api/domain/availability/{domain} - Check domain availability
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
checkAvailability <- function(self, ...) {
  self$http$get("/api/domain/availability/{domain}", list(...))
}

#' GET /api/domain/{id}/ns - Get domain nameservers
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getNameservers <- function(self, ...) {
  self$http$get("/api/domain/{id}/ns", list(...))
}

#' PUT /api/domain/{id}/ns - Update domain nameservers
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateNameservers <- function(self, ...) {
  self$http$put("/api/domain/{id}/ns", list(...))
}

#' GET /api/domain/{id}/epp - Get domain EPP code
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getEppCode <- function(self, ...) {
  self$http$get("/api/domain/{id}/epp", list(...))
}

#' GET /api/domain/{id}/sync - Synchronize domain
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
sync <- function(self, ...) {
  self$http$get("/api/domain/{id}/sync", list(...))
}

#' GET /api/domain/{id}/reglock - Get domain lock status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getLock <- function(self, ...) {
  self$http$get("/api/domain/{id}/reglock", list(...))
}

#' PUT /api/domain/{id}/reglock - Update domain lock
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateLock <- function(self, ...) {
  self$http$put("/api/domain/{id}/reglock", list(...))
}

#' PUT /api/domain/{id}/idprotection - Update ID protection
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateIdProtection <- function(self, ...) {
  self$http$put("/api/domain/{id}/idprotection", list(...))
}

#' GET /api/domain/{id}/contact - Get domain contact info
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getContact <- function(self, ...) {
  self$http$get("/api/domain/{id}/contact", list(...))
}

#' PUT /api/domain/{id}/contact - Update domain contact info
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateContact <- function(self, ...) {
  self$http$put("/api/domain/{id}/contact", list(...))
}

#' GET /api/domain/{id}/email/forwarding - Get email forwarding
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getEmailForwarding <- function(self, ...) {
  self$http$get("/api/domain/{id}/email/forwarding", list(...))
}

#' PUT /api/domain/{id}/email/forwarding - Update email forwarding
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateEmailForwarding <- function(self, ...) {
  self$http$put("/api/domain/{id}/email/forwarding", list(...))
}

#' GET /api/domain/order - List available TLDs
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getAvailableTlds <- function(self, ...) {
  self$http$get("/api/domain/order", list(...))
}

#' POST /api/domain/order - Order new domain
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
order <- function(self, ...) {
  self$http$post("/api/domain/order", list(...))
}

#' POST /api/domain/{id}/renew - Renew domain
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
renew <- function(self, ...) {
  self$http$post("/api/domain/{id}/renew", list(...))
}

#' GET /api/domain/order/{id}/form - Get additional data for TLD
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getTldForm <- function(self, ...) {
  self$http$get("/api/domain/order/{id}/form", list(...))
}

#' GET /api/domain/{id}/documents - Get domain documents
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getDocuments <- function(self, ...) {
  self$http$get("/api/domain/{id}/documents", list(...))
}

