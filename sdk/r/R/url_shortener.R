#' URL Shortener: shorten URLs, manage links, stats
#' @param http HttpClient object
#' @return Resource object
#' @export
UrlShortenerResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "UrlShortenerResource"
  env
}

#' POST /api/url-shortener/shorten - Shorten a URL
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
shorten <- function(self, ...) {
  self$http$post("/api/url-shortener/shorten", list(...))
}

#' GET /api/url-shortener/links - List links
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listLinks <- function(self, ...) {
  self$http$get("/api/url-shortener/links", list(...))
}

#' GET /api/url-shortener/config - Get shortener config
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getConfig <- function(self, ...) {
  self$http$get("/api/url-shortener/config", list(...))
}

#' GET /api/url-shortener/stats - Get link stats
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getStats <- function(self, ...) {
  self$http$get("/api/url-shortener/stats", list(...))
}

#' GET /api/url-shortener/links/{id} - Get link details
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getLink <- function(self, ...) {
  self$http$get("/api/url-shortener/links/{id}", list(...))
}

#' DELETE /api/url-shortener/links/{id} - Delete link
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteLink <- function(self, ...) {
  self$http$delete("/api/url-shortener/links/{id}", list(...))
}

