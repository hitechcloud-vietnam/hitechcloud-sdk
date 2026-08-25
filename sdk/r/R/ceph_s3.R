#' Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation
#' @param http HttpClient object
#' @return Resource object
#' @export
CephS3Resource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "CephS3Resource"
  env
}

#' GET /api/service/{id}/s3 - Get S3 connection info
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getConnectionInfo <- function(self, ...) {
  self$http$get("/api/service/{id}/s3", list(...))
}

#' GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getCredentials <- function(self, ...) {
  self$http$get("/api/service/{id}/s3/credentials", list(...))
}

#' GET /api/service/{id}/s3/usage - Get S3 usage
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getUsage <- function(self, ...) {
  self$http$get("/api/service/{id}/s3/usage", list(...))
}

#' GET /api/service/{id}/s3/metrics - Get S3 metrics
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getMetrics <- function(self, ...) {
  self$http$get("/api/service/{id}/s3/metrics", list(...))
}

#' GET /api/service/{id}/s3/buckets - List buckets
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listBuckets <- function(self, ...) {
  self$http$get("/api/service/{id}/s3/buckets", list(...))
}

#' POST /api/service/{id}/s3/buckets - Create bucket
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createBucket <- function(self, ...) {
  self$http$post("/api/service/{id}/s3/buckets", list(...))
}

#' DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteBucket <- function(self, ...) {
  self$http$delete("/api/service/{id}/s3/buckets/{bucket}", list(...))
}

#' GET /api/service/{id}/s3/subusers - List sub-users
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listSubusers <- function(self, ...) {
  self$http$get("/api/service/{id}/s3/subusers", list(...))
}

#' POST /api/service/{id}/s3/subusers - Create sub-user
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
createSubuser <- function(self, ...) {
  self$http$post("/api/service/{id}/s3/subusers", list(...))
}

#' DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
deleteSubuser <- function(self, ...) {
  self$http$delete("/api/service/{id}/s3/subusers/{subuser}", list(...))
}

#' POST /api/service/{id}/s3/key - Rotate secret key
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rotateSecretKey <- function(self, ...) {
  self$http$post("/api/service/{id}/s3/key", list(...))
}

