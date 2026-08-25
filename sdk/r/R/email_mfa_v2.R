#' EmailMfaV2: email-based MFA management
#' @param http HttpClient object
#' @return Resource object
#' @export
EmailMfaV2Resource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "EmailMfaV2Resource"
  env
}

#' GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getMfaStatus <- function(self, ...) {
  self$http$get("/api/email_mfa_v2/status/{user_type}/{user_id}", list(...))
}

#' POST /api/email_mfa_v2/send - Send one-time code
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
sendCode <- function(self, ...) {
  self$http$post("/api/email_mfa_v2/send", list(...))
}

#' POST /api/email_mfa_v2/verify - Verify one-time code
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
verifyCode <- function(self, ...) {
  self$http$post("/api/email_mfa_v2/verify", list(...))
}

#' GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listActiveCodes <- function(self, ...) {
  self$http$get("/api/email_mfa_v2/list/{user_type}/{user_id}", list(...))
}

#' POST /api/email_mfa_v2/revokeall - Revoke all active codes
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
revokeAllCodes <- function(self, ...) {
  self$http$post("/api/email_mfa_v2/revokeall", list(...))
}

#' POST /api/email_mfa_v2/disable - Disable MFA entirely
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
disableMfa <- function(self, ...) {
  self$http$post("/api/email_mfa_v2/disable", list(...))
}

