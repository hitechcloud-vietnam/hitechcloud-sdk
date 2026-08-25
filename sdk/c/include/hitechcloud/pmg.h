#ifndef HITECHCLOUD_PMG_H
#define HITECHCLOUD_PMG_H

#include "http_client.h"

/* HiTechCloudPMG: mail filtering configuration and management */
char *hc_pmg_get_config(hc_http_client_t *client);
char *hc_pmg_add_domain(hc_http_client_t *client);
char *hc_pmg_set_transport(hc_http_client_t *client);
char *hc_pmg_get_stats(hc_http_client_t *client);

#endif
