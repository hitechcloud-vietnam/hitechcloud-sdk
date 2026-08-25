#include "hitechcloud/cloud_service.h"
#include <stdlib.h>


/* POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown */
char *hc_cloud_service_shutdown_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/shutdown", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power */
char *hc_cloud_service_reset_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/reset", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname */
char *hc_cloud_service_change_hostname(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/hostname", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/ippool - List IP pools */
char *hc_cloud_service_list_ip_pools(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/ippool", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP */
char *hc_cloud_service_allocate_ip(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/ippool/{pool}", NULL);
}

/* GET /api/service/{id}/networks - List available networks */
char *hc_cloud_service_list_networks(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/networks", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface */
char *hc_cloud_service_add_interface(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/interfaces", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details */
char *hc_cloud_service_get_interface(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/interfaces/{iface}", NULL);
}

/* PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface */
char *hc_cloud_service_update_interface(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{id}/vms/{vmid}/interfaces/{iface}", NULL);
}

/* DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface */
char *hc_cloud_service_remove_interface(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{id}/vms/{vmid}/interfaces/{iface}", NULL);
}

