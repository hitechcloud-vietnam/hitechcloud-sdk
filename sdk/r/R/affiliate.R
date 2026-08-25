#' Affiliate: affiliate program management
#' @param http HttpClient object
#' @return Resource object
#' @export
AffiliateResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "AffiliateResource"
  env
}

#' GET /api/affiliates/summary - Get Affiliate summary
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getSummary <- function(self, ...) {
  self$http$get("/api/affiliates/summary", list(...))
}

#' GET /api/affiliates/campaigns - Get Affiliate campaigns
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listCampaigns <- function(self, ...) {
  self$http$get("/api/affiliates/campaigns", list(...))
}

#' GET /api/affiliates/commissions - Get Affiliate commissions
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listCommissions <- function(self, ...) {
  self$http$get("/api/affiliates/commissions", list(...))
}

#' GET /api/affiliates/payouts - Get Affiliate payouts
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listPayouts <- function(self, ...) {
  self$http$get("/api/affiliates/payouts", list(...))
}

#' GET /api/affiliates/vouchers - Get Affiliate vouchers
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listVouchers <- function(self, ...) {
  self$http$get("/api/affiliates/vouchers", list(...))
}

#' GET /api/affiliates/commissionplans - Get Affiliate commission plans
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listCommissionPlans <- function(self, ...) {
  self$http$get("/api/affiliates/commissionplans", list(...))
}

