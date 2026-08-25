#ifndef HITECHCLOUD_COLLOCATION_H
#define HITECHCLOUD_COLLOCATION_H

#include "http_client.h"

/* Collocation Services: PDU port management */
char *hc_collocation_list_pdu_ports(hc_http_client_t *client);
char *hc_collocation_get_pdu_port_state(hc_http_client_t *client);
char *hc_collocation_set_pdu_port_status(hc_http_client_t *client);

#endif
