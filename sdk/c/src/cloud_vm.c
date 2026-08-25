#include "hitechcloud/cloud_vm.h"
#include <stdlib.h>


/* GET /api/service/{id}/upgrade - List resource upgrade options */
char *hc_cloud_vm_get_upgrade_options(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/upgrade", NULL);
}

/* POST /api/service/{id}/upgrade - Estimate or request upgrade */
char *hc_cloud_vm_request_upgrade(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/upgrade", NULL);
}

/* GET /api/service/{id}/resources - Show available and used resources */
char *hc_cloud_vm_get_resources(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/resources", NULL);
}

/* GET /api/service/{id}/templates/{vmid} - List rebuild templates */
char *hc_cloud_vm_list_rebuild_templates(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/templates/{vmid}", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph */
char *hc_cloud_vm_get_memory_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/usage/memory", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM */
char *hc_cloud_vm_list_iso_images(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/images", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image */
char *hc_cloud_vm_mount_iso(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/images", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/boot - Change boot order */
char *hc_cloud_vm_set_boot_order(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/boot", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE */
char *hc_cloud_vm_enable_pxe(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/tuntap", NULL);
}

