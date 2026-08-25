#include "hitechcloud/passkey_v2.h"
#include <stdlib.h>


/* GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status */
char *hc_passkey_v2_get_mfa_status(hc_http_client_t *client) {
    return hc_get(client, "/api/passkeyv2/status/{user_type}/{user_id}", NULL);
}

/* GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials */
char *hc_passkey_v2_list_credentials(hc_http_client_t *client) {
    return hc_get(client, "/api/passkeyv2/credentials/{user_type}/{user_id}", NULL);
}

/* POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential */
char *hc_passkey_v2_delete_credential(hc_http_client_t *client) {
    return hc_post(client, "/api/passkeyv2/credentials/{user_type}/{user_id}/delete", NULL);
}

/* POST /api/passkeyv2/email_otp/send - Send email OTP */
char *hc_passkey_v2_send_email_otp(hc_http_client_t *client) {
    return hc_post(client, "/api/passkeyv2/email_otp/send", NULL);
}

/* POST /api/passkeyv2/email_otp/verify - Verify email OTP */
char *hc_passkey_v2_verify_email_otp(hc_http_client_t *client) {
    return hc_post(client, "/api/passkeyv2/email_otp/verify", NULL);
}

/* POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA */
char *hc_passkey_v2_disable_mfa(hc_http_client_t *client) {
    return hc_post(client, "/api/passkeyv2/disable/{user_type}/{user_id}", NULL);
}

