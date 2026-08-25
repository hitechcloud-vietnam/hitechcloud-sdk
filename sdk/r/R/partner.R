#' Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates
#' @param http HttpClient object
#' @return Resource object
#' @export
PartnerResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "PartnerResource"
  env
}

#' GET /api/partner - Get partner info
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getPartnerInfo <- function(self, ...) {
  self$http$get("/api/partner", list(...))
}

#' POST /api/partner/apply - Apply to partner program
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
apply <- function(self, ...) {
  self$http$post("/api/partner/apply", list(...))
}

#' GET /api/partner/tiers - List partner tiers
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listTiers <- function(self, ...) {
  self$http$get("/api/partner/tiers", list(...))
}

#' GET /api/partner/pricing - Get partner pricing
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getPricing <- function(self, ...) {
  self$http$get("/api/partner/pricing", list(...))
}

#' GET /api/partner/customers - List customers
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listCustomers <- function(self, ...) {
  self$http$get("/api/partner/customers", list(...))
}

#' GET /api/partner/earnings - Get earnings
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getEarnings <- function(self, ...) {
  self$http$get("/api/partner/earnings", list(...))
}

#' GET /api/partner/wallet - Get wallet balance
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getWallet <- function(self, ...) {
  self$http$get("/api/partner/wallet", list(...))
}

#' GET /api/partner/payouts - List payouts
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listPayouts <- function(self, ...) {
  self$http$get("/api/partner/payouts", list(...))
}

#' POST /api/partner/payouts - Request payout
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
requestPayout <- function(self, ...) {
  self$http$post("/api/partner/payouts", list(...))
}

#' GET /api/partner/leads - List leads
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listLeads <- function(self, ...) {
  self$http$get("/api/partner/leads", list(...))
}

#' POST /api/partner/leads - Create lead
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createLead <- function(self, ...) {
  self$http$post("/api/partner/leads", list(...))
}

#' GET /api/partner/referral - Get referral info
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getReferral <- function(self, ...) {
  self$http$get("/api/partner/referral", list(...))
}

#' GET /api/partner/rates - Get exchange rates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getRates <- function(self, ...) {
  self$http$get("/api/partner/rates", list(...))
}

