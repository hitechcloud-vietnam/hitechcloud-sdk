#ifndef HITECHCLOUD_PASSKEY_V2_H
#define HITECHCLOUD_PASSKEY_V2_H

#include "http_client.h"

/* PasskeyV2: passkey-based MFA management */
char *hc_passkey_v2_get_mfa_status(hc_http_client_t *client);
char *hc_passkey_v2_list_credentials(hc_http_client_t *client);
char *hc_passkey_v2_delete_credential(hc_http_client_t *client);
char *hc_passkey_v2_send_email_otp(hc_http_client_t *client);
char *hc_passkey_v2_verify_email_otp(hc_http_client_t *client);
char *hc_passkey_v2_disable_mfa(hc_http_client_t *client);

#endif
