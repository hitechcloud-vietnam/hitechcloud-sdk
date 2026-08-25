#ifndef HITECHCLOUD_CONTACTS_H
#define HITECHCLOUD_CONTACTS_H

#include "http_client.h"

/* Contacts: manage account contacts */
char *hc_contacts_list(hc_http_client_t *client);
char *hc_contacts_create(hc_http_client_t *client);
char *hc_contacts_get_privileges(hc_http_client_t *client);
char *hc_contacts_get(hc_http_client_t *client);
char *hc_contacts_update(hc_http_client_t *client);

#endif
