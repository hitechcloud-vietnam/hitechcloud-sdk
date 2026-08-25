#' Account Authentication: login, logout, token refresh, signup, password reset
#' @param http HttpClient object
#' @return Resource object
#' @export
AuthResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "AuthResource"
  env
}

#' POST /api/login - Authenticate and obtain access token
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
login <- function(self, ...) {
  self$http$post("/api/login", list(...))
}

#' POST /api/logout - Invalidate current access token
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
logout <- function(self, ...) {
  self$http$post("/api/logout", list(...))
}

#' POST /api/token - Generate new token using refresh token
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
refreshToken <- function(self, ...) {
  self$http$post("/api/token", list(...))
}

#' POST /api/revoke - Invalidate authorization and refresh token
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
revokeToken <- function(self, ...) {
  self$http$post("/api/revoke", list(...))
}

#' POST /api/passwordreset - Request password reset email
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
passwordReset <- function(self, ...) {
  self$http$post("/api/passwordreset", list(...))
}

#' POST /api/signup - Create new account
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
signup <- function(self, ...) {
  self$http$post("/api/signup", list(...))
}

