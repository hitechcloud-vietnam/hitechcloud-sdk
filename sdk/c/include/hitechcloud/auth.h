#ifndef HITECHCLOUD_AUTH_H
#define HITECHCLOUD_AUTH_H

#include "http_client.h"

/* Account Authentication: login, logout, token refresh, signup, password reset */
char *hc_auth_login(hc_http_client_t *client);
char *hc_auth_logout(hc_http_client_t *client);
char *hc_auth_refresh_token(hc_http_client_t *client);
char *hc_auth_revoke_token(hc_http_client_t *client);
char *hc_auth_password_reset(hc_http_client_t *client);
char *hc_auth_signup(hc_http_client_t *client);

#endif
