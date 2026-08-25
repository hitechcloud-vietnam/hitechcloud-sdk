#' PasskeyV2: passkey-based MFA management
#' @param http HttpClient object
#' @return Resource object
#' @export
PasskeyV2Resource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "PasskeyV2Resource"
  env
}

#' GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getMfaStatus <- function(self, ...) {
  self$http$get("/api/passkeyv2/status/{user_type}/{user_id}", list(...))
}

#' GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listCredentials <- function(self, ...) {
  self$http$get("/api/passkeyv2/credentials/{user_type}/{user_id}", list(...))
}

#' POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteCredential <- function(self, ...) {
  self$http$post("/api/passkeyv2/credentials/{user_type}/{user_id}/delete", list(...))
}

#' POST /api/passkeyv2/email_otp/send - Send email OTP
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
sendEmailOtp <- function(self, ...) {
  self$http$post("/api/passkeyv2/email_otp/send", list(...))
}

#' POST /api/passkeyv2/email_otp/verify - Verify email OTP
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
verifyEmailOtp <- function(self, ...) {
  self$http$post("/api/passkeyv2/email_otp/verify", list(...))
}

#' POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
disableMfa <- function(self, ...) {
  self$http$post("/api/passkeyv2/disable/{user_type}/{user_id}", list(...))
}

