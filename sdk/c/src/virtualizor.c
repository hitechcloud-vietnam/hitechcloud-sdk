#include "hitechcloud/virtualizor.h"
#include <stdlib.h>


/* POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server */
char *hc_virtualizor_suspend(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/suspend", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server */
char *hc_virtualizor_unsuspend(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/unsuspend", NULL);
}

/* GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates */
char *hc_virtualizor_list_rebuild_templates(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vms/{vmid}/rebuild", NULL);
}

/* POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key */
char *hc_virtualizor_change_ssh_key(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/vms/{vmid}/addsshkey", NULL);
}

