#include "hitechcloud/cloud_instance.h"
#include <stdlib.h>


/* GET /api/service/{id}/vms - List virtual servers */
char *hc_cloud_instance_list_vms(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms", NULL);
}

/* POST /api/service/{id}/vms - Create new virtual server */
char *hc_cloud_instance_create_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms", NULL);
}

/* GET /api/service/{id}/vms/{vmid} - Get VM details */
char *hc_cloud_instance_get_vm(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}", NULL);
}

/* DELETE /api/service/{id}/vms/{vmid} - Remove virtual server */
char *hc_cloud_instance_destroy_vm(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{id}/vms/{vmid}", NULL);
}

/* PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server */
char *hc_cloud_instance_resize_vm(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{id}/vms/{vmid}", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server */
char *hc_cloud_instance_stop_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/stop", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/start - Start virtual server */
char *hc_cloud_instance_start_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/start", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server */
char *hc_cloud_instance_reboot_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/reboot", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password */
char *hc_cloud_instance_reset_password(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/resetpwd", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server */
char *hc_cloud_instance_rebuild_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/rebuild", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM */
char *hc_cloud_instance_list_vm_ips(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/ips", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM */
char *hc_cloud_instance_assign_ip(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/ips", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces */
char *hc_cloud_instance_list_interfaces(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/interfaces", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph */
char *hc_cloud_instance_get_cpu_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/usage/cpu", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph */
char *hc_cloud_instance_get_network_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/usage/net", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph */
char *hc_cloud_instance_get_disk_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/usage/disk", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM */
char *hc_cloud_instance_list_disks(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/storage", NULL);
}

/* PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk */
char *hc_cloud_instance_resize_disk(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{id}/vms/{vmid}/storage/{diskid}", NULL);
}

/* GET /api/service/{id}/images - List ISO images */
char *hc_cloud_instance_list_iso_images(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/images", NULL);
}

/* POST /api/service/{id}/images - Add ISO image */
char *hc_cloud_instance_add_iso_image(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/images", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs */
char *hc_cloud_instance_list_available_ips(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips", NULL);
}

/* DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM */
char *hc_cloud_instance_remove_ip(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{id}/vms/{vmid}/ips/{ipid}", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries */
char *hc_cloud_instance_get_rdns(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/rdns", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries */
char *hc_cloud_instance_update_rdns(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/rdns", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network */
char *hc_cloud_instance_rebuild_network(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/rebuild_network", NULL);
}

