#' Billing & Contracts: balance, invoices, payment methods
#' @param http HttpClient object
#' @return Resource object
#' @export
BillingResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "BillingResource"
  env
}

#' GET /api/balance - Get account balance and credit
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getBalance <- function(self, ...) {
  self$http$get("/api/balance", list(...))
}

#' GET /api/invoice - List all invoices
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listInvoices <- function(self, ...) {
  self$http$get("/api/invoice", list(...))
}

#' GET /api/invoice/{id} - Get invoice details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getInvoice <- function(self, ...) {
  self$http$get("/api/invoice/{id}", list(...))
}

#' POST /api/invoice/{id}/credit - Apply account credit to invoice
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
applyCredit <- function(self, ...) {
  self$http$post("/api/invoice/{id}/credit", list(...))
}

#' GET /api/payment - List available payment methods
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getPaymentMethods <- function(self, ...) {
  self$http$get("/api/payment", list(...))
}

#' GET /api/payment/fees - List payment methods with fees
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getPaymentFees <- function(self, ...) {
  self$http$get("/api/payment/fees", list(...))
}

