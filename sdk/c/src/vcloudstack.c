#include "hitechcloud/vcloudstack.h"
#include <stdlib.h>


/* POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode */
char *hc_vcloudstack_rescue_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/rescue", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode */
char *hc_vcloudstack_unrescue_vm(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/unrescue", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/console - Get VM console */
char *hc_vcloudstack_get_console(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/console", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details */
char *hc_vcloudstack_get_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/usage", NULL);
}

