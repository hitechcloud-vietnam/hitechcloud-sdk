#' LocationV2: countries, states, cities lookup
#' @param http HttpClient object
#' @return Resource object
#' @export
LocationV2Resource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "LocationV2Resource"
  env
}

#' GET /api/location_v2/countries - Return list of countries
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listCountries <- function(self, ...) {
  self$http$get("/api/location_v2/countries", list(...))
}

#' GET /api/location_v2/{code}/state - Return states for a country code
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getStates <- function(self, ...) {
  self$http$get("/api/location_v2/{code}/state", list(...))
}

#' GET /api/location_v2/state/{id}/city - Return cities for a state ID
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCities <- function(self, ...) {
  self$http$get("/api/location_v2/state/{id}/city", list(...))
}

#' GET /api/location_v2/state/city/{name} - Return cities for a state name
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCitiesByStateName <- function(self, ...) {
  self$http$get("/api/location_v2/state/city/{name}", list(...))
}

