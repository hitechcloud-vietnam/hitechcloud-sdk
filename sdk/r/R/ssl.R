#' SSL Certificates: list, order, download certificates
#' @param http HttpClient object
#' @return Resource object
#' @export
SSLResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "SSLResource"
  env
}

#' GET /api/certificate - List all SSL certificates
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
list <- function(self, ...) {
  self$http$get("/api/certificate", list(...))
}

#' GET /api/certificate/{id} - Return certificate details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
get <- function(self, ...) {
  self$http$get("/api/certificate/{id}", list(...))
}

#' GET /api/certificate/{id}/crt - Download X.509 certificate
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
download <- function(self, ...) {
  self$http$get("/api/certificate/{id}/crt", list(...))
}

#' GET /api/certificate/order - List available certificates for purchase
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listAvailable <- function(self, ...) {
  self$http$get("/api/certificate/order", list(...))
}

#' POST /api/certificate/order - Order new certificate
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
order <- function(self, ...) {
  self$http$post("/api/certificate/order", list(...))
}

#' GET /api/certificate/order/{product_id}/software - List server software
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listServerSoftware <- function(self, ...) {
  self$http$get("/api/certificate/order/{product_id}/software", list(...))
}

