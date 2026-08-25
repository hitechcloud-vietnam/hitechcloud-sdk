#ifndef HITECHCLOUD_CLOUD_GPU_H
#define HITECHCLOUD_CLOUD_GPU_H

#include "http_client.h"

/* Cloud GPU: GPU instance management */
char *hc_cloud_gpu_reboot(hc_http_client_t *client);
char *hc_cloud_gpu_stop(hc_http_client_t *client);
char *hc_cloud_gpu_start(hc_http_client_t *client);
char *hc_cloud_gpu_get_firewall_rules(hc_http_client_t *client);
char *hc_cloud_gpu_add_firewall_rules(hc_http_client_t *client);
char *hc_cloud_gpu_remove_firewall_rule(hc_http_client_t *client);

#endif
