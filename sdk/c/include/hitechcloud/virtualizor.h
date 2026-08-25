#ifndef HITECHCLOUD_VIRTUALIZOR_H
#define HITECHCLOUD_VIRTUALIZOR_H

#include "http_client.h"

/* Virtualizor: VPS management via Virtualizor panel */
char *hc_virtualizor_suspend(hc_http_client_t *client);
char *hc_virtualizor_unsuspend(hc_http_client_t *client);
char *hc_virtualizor_list_rebuild_templates(hc_http_client_t *client);
char *hc_virtualizor_change_ssh_key(hc_http_client_t *client);

#endif
