#' Cart: shopping cart management
#' @param http HttpClient object
#' @return Resource object
#' @export
CartResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "CartResource"
  env
}

#' GET /api/category - Return a list of product categories
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listCategories <- function(self, ...) {
  self$http$get("/api/category", list(...))
}

#' GET /api/category/{category_id}/product - List products in category
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listProducts <- function(self, ...) {
  self$http$get("/api/category/{category_id}/product", list(...))
}

#' GET /api/order/{product_id} - Get product configuration details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getProductConfig <- function(self, ...) {
  self$http$get("/api/order/{product_id}", list(...))
}

#' POST /api/order/{product_id} - Order new service
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
orderProduct <- function(self, ...) {
  self$http$post("/api/order/{product_id}", list(...))
}

#' POST /api/order - Order multiple services
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
orderMultiple <- function(self, ...) {
  self$http$post("/api/order", list(...))
}

#' POST /api/quote - Calculate order cost and recurring prices
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getQuote <- function(self, ...) {
  self$http$post("/api/quote", list(...))
}

