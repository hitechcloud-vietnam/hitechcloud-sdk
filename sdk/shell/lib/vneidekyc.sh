#!/usr/bin/env bash
# VNeIDEKYC: eKYC identity verification and organization verification
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/vneidekyc/ekyc/session - Start personal eKYC session
start-personal-ekyc() {
    hc_get "/api/vneidekyc/ekyc/session" "$@"
}

# GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session
get-ekyc-session() {
    hc_get "/api/vneidekyc/ekyc/session/{session_hash}" "$@"
}

# GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions
list-client-sessions() {
    hc_get "/api/vneidekyc/ekyc/list/{client_id}" "$@"
}

# POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file
upload-file() {
    hc_post "/api/vneidekyc/ekyc/{session_hash}/upload" "$@"
}

# POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC
submit-ekyc() {
    hc_post "/api/vneidekyc/ekyc/{session_hash}/submit" "$@"
}

# POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session
cancel-session() {
    hc_post "/api/vneidekyc/ekyc/{session_hash}/cancel" "$@"
}

# POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC
accept-ekyc() {
    hc_post "/api/vneidekyc/ekyc/{session_hash}/accept" "$@"
}

# POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC
reject-ekyc() {
    hc_post "/api/vneidekyc/ekyc/{session_hash}/reject" "$@"
}

# POST /api/vneidekyc/org/lookup - Organization tax code lookup
lookup-organization() {
    hc_post "/api/vneidekyc/org/lookup" "$@"
}

# POST /api/vneidekyc/org/start - Start organization verification
start-org-verification() {
    hc_post "/api/vneidekyc/org/start" "$@"
}

# GET /api/vneidekyc/org/{org_hash} - Get organization record
get-organization() {
    hc_get "/api/vneidekyc/org/{org_hash}" "$@"
}

# POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization
accept-organization() {
    hc_post "/api/vneidekyc/org/{org_hash}/accept" "$@"
}

# POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization
reject-organization() {
    hc_post "/api/vneidekyc/org/{org_hash}/reject" "$@"
}

# POST /api/vneidekyc/pdf/upload - Upload signed PDF
upload-signed-pdf() {
    hc_post "/api/vneidekyc/pdf/upload" "$@"
}

# GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record
get-signed-pdf() {
    hc_get "/api/vneidekyc/pdf/{pdf_hash}" "$@"
}

# GET /api/vneidekyc/client/{client_id}/status - Client verification status
get-client-status() {
    hc_get "/api/vneidekyc/client/{client_id}/status" "$@"
}

