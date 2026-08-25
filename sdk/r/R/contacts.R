#' Contacts: manage account contacts
#' @param http HttpClient object
#' @return Resource object
#' @export
ContactsResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "ContactsResource"
  env
}

#' GET /api/contact - Return a list of contacts on this account
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
list <- function(self, ...) {
  self$http$get("/api/contact", list(...))
}

#' POST /api/contact - Create new contact account
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
create <- function(self, ...) {
  self$http$post("/api/contact", list(...))
}

#' GET /api/contact/privileges - List possible contact privileges
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getPrivileges <- function(self, ...) {
  self$http$get("/api/contact/privileges", list(...))
}

#' GET /api/contact/{id} - Get contact details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
get <- function(self, ...) {
  self$http$get("/api/contact/{id}", list(...))
}

#' PUT /api/contact/{id} - Update contact details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
update <- function(self, ...) {
  self$http$put("/api/contact/{id}", list(...))
}

