#' VNeIDEKYC: eKYC identity verification and organization verification
#' @param http HttpClient object
#' @return Resource object
#' @export
VNeIdeKycResource <- function(http) {
  env <- new.env(parent = emptyenv())
  env$http <- http
  class(env) <- "VNeIdeKycResource"
  env
}

#' GET /api/vneidekyc/ekyc/session - Start personal eKYC session
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
startPersonalEkyc <- function(self, ...) {
  self$http$get("/api/vneidekyc/ekyc/session", list(...))
}

#' GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getEkycSession <- function(self, ...) {
  self$http$get("/api/vneidekyc/ekyc/session/{session_hash}", list(...))
}

#' GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
listClientSessions <- function(self, ...) {
  self$http$get("/api/vneidekyc/ekyc/list/{client_id}", list(...))
}

#' POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
uploadFile <- function(self, ...) {
  self$http$post("/api/vneidekyc/ekyc/{session_hash}/upload", list(...))
}

#' POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
submitEkyc <- function(self, ...) {
  self$http$post("/api/vneidekyc/ekyc/{session_hash}/submit", list(...))
}

#' POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
cancelSession <- function(self, ...) {
  self$http$post("/api/vneidekyc/ekyc/{session_hash}/cancel", list(...))
}

#' POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
acceptEkyc <- function(self, ...) {
  self$http$post("/api/vneidekyc/ekyc/{session_hash}/accept", list(...))
}

#' POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rejectEkyc <- function(self, ...) {
  self$http$post("/api/vneidekyc/ekyc/{session_hash}/reject", list(...))
}

#' POST /api/vneidekyc/org/lookup - Organization tax code lookup
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
lookupOrganization <- function(self, ...) {
  self$http$post("/api/vneidekyc/org/lookup", list(...))
}

#' POST /api/vneidekyc/org/start - Start organization verification
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
startOrgVerification <- function(self, ...) {
  self$http$post("/api/vneidekyc/org/start", list(...))
}

#' GET /api/vneidekyc/org/{org_hash} - Get organization record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getOrganization <- function(self, ...) {
  self$http$get("/api/vneidekyc/org/{org_hash}", list(...))
}

#' POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
acceptOrganization <- function(self, ...) {
  self$http$post("/api/vneidekyc/org/{org_hash}/accept", list(...))
}

#' POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
rejectOrganization <- function(self, ...) {
  self$http$post("/api/vneidekyc/org/{org_hash}/reject", list(...))
}

#' POST /api/vneidekyc/pdf/upload - Upload signed PDF
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
uploadSignedPdf <- function(self, ...) {
  self$http$post("/api/vneidekyc/pdf/upload", list(...))
}

#' GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getSignedPdf <- function(self, ...) {
  self$http$get("/api/vneidekyc/pdf/{pdf_hash}", list(...))
}

#' GET /api/vneidekyc/client/{client_id}/status - Client verification status
#' @param self Resource object
#' @param ... Additional parameters
#' @return API response
getClientStatus <- function(self, ...) {
  self$http$get("/api/vneidekyc/client/{client_id}/status", list(...))
}

