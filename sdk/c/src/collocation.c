#include "hitechcloud/collocation.h"
#include <stdlib.h>


/* GET /api/service/{id}/pdu - List PDU ports assigned to service */
char *hc_collocation_list_pdu_ports(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pdu", NULL);
}

/* GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state */
char *hc_collocation_get_pdu_port_state(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pdu/{port}", NULL);
}

/* POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state */
char *hc_collocation_set_pdu_port_status(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/pdu/{port}", NULL);
}

