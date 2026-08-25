#ifndef HITECHCLOUD_VCLOUDSTACK_H
#define HITECHCLOUD_VCLOUDSTACK_H

#include "http_client.h"

/* vCloudStack Public Cloud: rescue, unrescue, console, usage */
char *hc_vcloudstack_rescue_vm(hc_http_client_t *client);
char *hc_vcloudstack_unrescue_vm(hc_http_client_t *client);
char *hc_vcloudstack_get_console(hc_http_client_t *client);
char *hc_vcloudstack_get_usage(hc_http_client_t *client);

#endif
