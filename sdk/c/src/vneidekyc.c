#include "hitechcloud/vneidekyc.h"
#include <stdlib.h>


/* GET /api/vneidekyc/ekyc/session - Start personal eKYC session */
char *hc_vneidekyc_start_personal_ekyc(hc_http_client_t *client) {
    return hc_get(client, "/api/vneidekyc/ekyc/session", NULL);
}

/* GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session */
char *hc_vneidekyc_get_ekyc_session(hc_http_client_t *client) {
    return hc_get(client, "/api/vneidekyc/ekyc/session/{session_hash}", NULL);
}

/* GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions */
char *hc_vneidekyc_list_client_sessions(hc_http_client_t *client) {
    return hc_get(client, "/api/vneidekyc/ekyc/list/{client_id}", NULL);
}

/* POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file */
char *hc_vneidekyc_upload_file(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/ekyc/{session_hash}/upload", NULL);
}

/* POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC */
char *hc_vneidekyc_submit_ekyc(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/ekyc/{session_hash}/submit", NULL);
}

/* POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session */
char *hc_vneidekyc_cancel_session(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/ekyc/{session_hash}/cancel", NULL);
}

/* POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC */
char *hc_vneidekyc_accept_ekyc(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/ekyc/{session_hash}/accept", NULL);
}

/* POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC */
char *hc_vneidekyc_reject_ekyc(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/ekyc/{session_hash}/reject", NULL);
}

/* POST /api/vneidekyc/org/lookup - Organization tax code lookup */
char *hc_vneidekyc_lookup_organization(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/org/lookup", NULL);
}

/* POST /api/vneidekyc/org/start - Start organization verification */
char *hc_vneidekyc_start_org_verification(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/org/start", NULL);
}

/* GET /api/vneidekyc/org/{org_hash} - Get organization record */
char *hc_vneidekyc_get_organization(hc_http_client_t *client) {
    return hc_get(client, "/api/vneidekyc/org/{org_hash}", NULL);
}

/* POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization */
char *hc_vneidekyc_accept_organization(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/org/{org_hash}/accept", NULL);
}

/* POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization */
char *hc_vneidekyc_reject_organization(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/org/{org_hash}/reject", NULL);
}

/* POST /api/vneidekyc/pdf/upload - Upload signed PDF */
char *hc_vneidekyc_upload_signed_pdf(hc_http_client_t *client) {
    return hc_post(client, "/api/vneidekyc/pdf/upload", NULL);
}

/* GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record */
char *hc_vneidekyc_get_signed_pdf(hc_http_client_t *client) {
    return hc_get(client, "/api/vneidekyc/pdf/{pdf_hash}", NULL);
}

/* GET /api/vneidekyc/client/{client_id}/status - Client verification status */
char *hc_vneidekyc_get_client_status(hc_http_client_t *client) {
    return hc_get(client, "/api/vneidekyc/client/{client_id}/status", NULL);
}

