#ifndef HITECHCLOUD_VNEIDEKYC_H
#define HITECHCLOUD_VNEIDEKYC_H

#include "http_client.h"

/* VNeIDEKYC: eKYC identity verification and organization verification */
char *hc_vneidekyc_start_personal_ekyc(hc_http_client_t *client);
char *hc_vneidekyc_get_ekyc_session(hc_http_client_t *client);
char *hc_vneidekyc_list_client_sessions(hc_http_client_t *client);
char *hc_vneidekyc_upload_file(hc_http_client_t *client);
char *hc_vneidekyc_submit_ekyc(hc_http_client_t *client);
char *hc_vneidekyc_cancel_session(hc_http_client_t *client);
char *hc_vneidekyc_accept_ekyc(hc_http_client_t *client);
char *hc_vneidekyc_reject_ekyc(hc_http_client_t *client);
char *hc_vneidekyc_lookup_organization(hc_http_client_t *client);
char *hc_vneidekyc_start_org_verification(hc_http_client_t *client);
char *hc_vneidekyc_get_organization(hc_http_client_t *client);
char *hc_vneidekyc_accept_organization(hc_http_client_t *client);
char *hc_vneidekyc_reject_organization(hc_http_client_t *client);
char *hc_vneidekyc_upload_signed_pdf(hc_http_client_t *client);
char *hc_vneidekyc_get_signed_pdf(hc_http_client_t *client);
char *hc_vneidekyc_get_client_status(hc_http_client_t *client);

#endif
