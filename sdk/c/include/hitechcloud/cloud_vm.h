#ifndef HITECHCLOUD_CLOUD_VM_H
#define HITECHCLOUD_CLOUD_VM_H

#include "http_client.h"

/* Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE */
char *hc_cloud_vm_get_upgrade_options(hc_http_client_t *client);
char *hc_cloud_vm_request_upgrade(hc_http_client_t *client);
char *hc_cloud_vm_get_resources(hc_http_client_t *client);
char *hc_cloud_vm_list_rebuild_templates(hc_http_client_t *client);
char *hc_cloud_vm_get_memory_usage(hc_http_client_t *client);
char *hc_cloud_vm_list_iso_images(hc_http_client_t *client);
char *hc_cloud_vm_mount_iso(hc_http_client_t *client);
char *hc_cloud_vm_set_boot_order(hc_http_client_t *client);
char *hc_cloud_vm_enable_pxe(hc_http_client_t *client);

#endif
