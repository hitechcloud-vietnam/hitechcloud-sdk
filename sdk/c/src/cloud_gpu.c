#include "hitechcloud/cloud_gpu.h"
#include <stdlib.h>


/* PUT /api/service/{id}/vms/reboot - Reboot virtual server */
char *hc_cloud_gpu_reboot(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{id}/vms/reboot", NULL);
}

/* PUT /api/service/{id}/vms/stop - Stop virtual server */
char *hc_cloud_gpu_stop(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{id}/vms/stop", NULL);
}

/* PUT /api/service/{id}/vms/start - Start virtual server */
char *hc_cloud_gpu_start(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{id}/vms/start", NULL);
}

/* GET /api/service/{id}/vms/firewall - Get firewall rules */
char *hc_cloud_gpu_get_firewall_rules(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/firewall", NULL);
}

/* POST /api/service/{id}/vms/firewall - Add firewall rules */
char *hc_cloud_gpu_add_firewall_rules(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/firewall", NULL);
}

/* DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule */
char *hc_cloud_gpu_remove_firewall_rule(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{id}/vms/firewall/{position}", NULL);
}

