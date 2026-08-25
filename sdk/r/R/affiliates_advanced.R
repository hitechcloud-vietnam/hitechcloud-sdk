#' AffiliatesAdvanced: advanced affiliate management with client_id
#' @param http HttpClient object
#' @return Resource object
#' @export
AffiliatesAdvancedResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "AffiliatesAdvancedResource"
  env
}

#' GET /api/affiliates_adv/{client_id}/info - Get affiliate account info
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getInfo <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/info", list(...))
}

#' GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getStats <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/stats", list(...))
}

#' GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCommissionPlans <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/commission-plans", list(...))
}

#' GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getVouchers <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/vouchers", list(...))
}

#' GET /api/affiliates_adv/{client_id}/commissions - Get commissions
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCommissions <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/commissions", list(...))
}

#' GET /api/affiliates_adv/{client_id}/referrals - Get referred clients
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getReferrals <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/referrals", list(...))
}

#' GET /api/affiliates_adv/{client_id}/payouts - Get payout history
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getPayouts <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/payouts", list(...))
}

#' GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCampaigns <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/campaigns", list(...))
}

#' GET /api/affiliates_adv/{client_id}/audit - Get activity log
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getAuditLog <- function(self, ...) {
  self$http$get("/api/affiliates_adv/{client_id}/audit", list(...))
}

#' POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
activate <- function(self, ...) {
  self$http$post("/api/affiliates_adv/{client_id}/activate", list(...))
}

#' POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setCommissionPlan <- function(self, ...) {
  self$http$post("/api/affiliates_adv/{client_id}/commission-plan/{commission_id}", list(...))
}

#' POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createVoucher <- function(self, ...) {
  self$http$post("/api/affiliates_adv/{client_id}/vouchers/{plan_id}", list(...))
}

#' DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteVoucher <- function(self, ...) {
  self$http$delete("/api/affiliates_adv/{client_id}/vouchers/{voucher_id}", list(...))
}

#' POST /api/affiliates_adv/{client_id}/landing-page - Set landing page
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
setLandingPage <- function(self, ...) {
  self$http$post("/api/affiliates_adv/{client_id}/landing-page", list(...))
}

