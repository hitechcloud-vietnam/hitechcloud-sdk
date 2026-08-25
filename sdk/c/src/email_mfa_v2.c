#include "hitechcloud/email_mfa_v2.h"
#include <stdlib.h>


/* GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status */
char *hc_email_mfa_v2_get_mfa_status(hc_http_client_t *client) {
    return hc_get(client, "/api/email_mfa_v2/status/{user_type}/{user_id}", NULL);
}

/* POST /api/email_mfa_v2/send - Send one-time code */
char *hc_email_mfa_v2_send_code(hc_http_client_t *client) {
    return hc_post(client, "/api/email_mfa_v2/send", NULL);
}

/* POST /api/email_mfa_v2/verify - Verify one-time code */
char *hc_email_mfa_v2_verify_code(hc_http_client_t *client) {
    return hc_post(client, "/api/email_mfa_v2/verify", NULL);
}

/* GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes */
char *hc_email_mfa_v2_list_active_codes(hc_http_client_t *client) {
    return hc_get(client, "/api/email_mfa_v2/list/{user_type}/{user_id}", NULL);
}

/* POST /api/email_mfa_v2/revokeall - Revoke all active codes */
char *hc_email_mfa_v2_revoke_all_codes(hc_http_client_t *client) {
    return hc_post(client, "/api/email_mfa_v2/revokeall", NULL);
}

/* POST /api/email_mfa_v2/disable - Disable MFA entirely */
char *hc_email_mfa_v2_disable_mfa(hc_http_client_t *client) {
    return hc_post(client, "/api/email_mfa_v2/disable", NULL);
}

