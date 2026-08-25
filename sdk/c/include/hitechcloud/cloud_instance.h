#ifndef HITECHCLOUD_CLOUD_INSTANCE_H
#define HITECHCLOUD_CLOUD_INSTANCE_H

#include "http_client.h"

/* Cloud Instance: full VM lifecycle management */
char *hc_cloud_instance_list_vms(hc_http_client_t *client);
char *hc_cloud_instance_create_vm(hc_http_client_t *client);
char *hc_cloud_instance_get_vm(hc_http_client_t *client);
char *hc_cloud_instance_destroy_vm(hc_http_client_t *client);
char *hc_cloud_instance_resize_vm(hc_http_client_t *client);
char *hc_cloud_instance_stop_vm(hc_http_client_t *client);
char *hc_cloud_instance_start_vm(hc_http_client_t *client);
char *hc_cloud_instance_reboot_vm(hc_http_client_t *client);
char *hc_cloud_instance_reset_password(hc_http_client_t *client);
char *hc_cloud_instance_rebuild_vm(hc_http_client_t *client);
char *hc_cloud_instance_list_vm_ips(hc_http_client_t *client);
char *hc_cloud_instance_assign_ip(hc_http_client_t *client);
char *hc_cloud_instance_list_interfaces(hc_http_client_t *client);
char *hc_cloud_instance_get_cpu_usage(hc_http_client_t *client);
char *hc_cloud_instance_get_network_usage(hc_http_client_t *client);
char *hc_cloud_instance_get_disk_usage(hc_http_client_t *client);
char *hc_cloud_instance_list_disks(hc_http_client_t *client);
char *hc_cloud_instance_resize_disk(hc_http_client_t *client);
char *hc_cloud_instance_list_iso_images(hc_http_client_t *client);
char *hc_cloud_instance_add_iso_image(hc_http_client_t *client);
char *hc_cloud_instance_list_available_ips(hc_http_client_t *client);
char *hc_cloud_instance_remove_ip(hc_http_client_t *client);
char *hc_cloud_instance_get_rdns(hc_http_client_t *client);
char *hc_cloud_instance_update_rdns(hc_http_client_t *client);
char *hc_cloud_instance_rebuild_network(hc_http_client_t *client);

#endif
