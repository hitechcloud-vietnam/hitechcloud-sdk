#ifndef HITECHCLOUD_IPAM_H
#define HITECHCLOUD_IPAM_H

#include "http_client.h"

/* HiTechCloudIPAM: IP addresses, subnets, reverse DNS */
char *hc_ipam_list_ips(hc_http_client_t *client);
char *hc_ipam_list_subnets(hc_http_client_t *client);
char *hc_ipam_list_rdns(hc_http_client_t *client);
char *hc_ipam_set_rdns(hc_http_client_t *client);

#endif
