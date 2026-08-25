#ifndef HITECHCLOUD_CLOUD_SERVICE_H
#define HITECHCLOUD_CLOUD_SERVICE_H

#include "http_client.h"

/* Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces */
char *hc_cloud_service_shutdown_vm(hc_http_client_t *client);
char *hc_cloud_service_reset_vm(hc_http_client_t *client);
char *hc_cloud_service_change_hostname(hc_http_client_t *client);
char *hc_cloud_service_list_ip_pools(hc_http_client_t *client);
char *hc_cloud_service_allocate_ip(hc_http_client_t *client);
char *hc_cloud_service_list_networks(hc_http_client_t *client);
char *hc_cloud_service_add_interface(hc_http_client_t *client);
char *hc_cloud_service_get_interface(hc_http_client_t *client);
char *hc_cloud_service_update_interface(hc_http_client_t *client);
char *hc_cloud_service_remove_interface(hc_http_client_t *client);

#endif
