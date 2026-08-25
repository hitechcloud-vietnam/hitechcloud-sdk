#include "hitechcloud/auth.h"
#include <stdlib.h>


/* POST /api/login - Authenticate and obtain access token */
char *hc_auth_login(hc_http_client_t *client) {
    return hc_post(client, "/api/login", NULL);
}

/* POST /api/logout - Invalidate current access token */
char *hc_auth_logout(hc_http_client_t *client) {
    return hc_post(client, "/api/logout", NULL);
}

/* POST /api/token - Generate new token using refresh token */
char *hc_auth_refresh_token(hc_http_client_t *client) {
    return hc_post(client, "/api/token", NULL);
}

/* POST /api/revoke - Invalidate authorization and refresh token */
char *hc_auth_revoke_token(hc_http_client_t *client) {
    return hc_post(client, "/api/revoke", NULL);
}

/* POST /api/passwordreset - Request password reset email */
char *hc_auth_password_reset(hc_http_client_t *client) {
    return hc_post(client, "/api/passwordreset", NULL);
}

/* POST /api/signup - Create new account */
char *hc_auth_signup(hc_http_client_t *client) {
    return hc_post(client, "/api/signup", NULL);
}

