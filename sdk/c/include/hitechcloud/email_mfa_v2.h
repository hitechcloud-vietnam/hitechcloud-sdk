#ifndef HITECHCLOUD_EMAIL_MFA_V2_H
#define HITECHCLOUD_EMAIL_MFA_V2_H

#include "http_client.h"

/* EmailMfaV2: email-based MFA management */
char *hc_email_mfa_v2_get_mfa_status(hc_http_client_t *client);
char *hc_email_mfa_v2_send_code(hc_http_client_t *client);
char *hc_email_mfa_v2_verify_code(hc_http_client_t *client);
char *hc_email_mfa_v2_list_active_codes(hc_http_client_t *client);
char *hc_email_mfa_v2_revoke_all_codes(hc_http_client_t *client);
char *hc_email_mfa_v2_disable_mfa(hc_http_client_t *client);

#endif
