#' User Profile: view/update account details, logs
#' @param http HttpClient object
#' @return Resource object
#' @export
UsersResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "UsersResource"
  env
}

#' GET /api/details - Return registration details for my account
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getDetails <- function(self, ...) {
  self$http$get("/api/details", list(...))
}

#' PUT /api/details - Update registration details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
updateDetails <- function(self, ...) {
  self$http$put("/api/details", list(...))
}

#' GET /api/logs - Returns logs from history
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getLogs <- function(self, ...) {
  self$http$get("/api/logs", list(...))
}

