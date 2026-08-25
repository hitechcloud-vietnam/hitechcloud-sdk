#ifndef HITECHCLOUD_BARE_METAL_H
#define HITECHCLOUD_BARE_METAL_H

#include "http_client.h"

/* Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power */
char *hc_bare_metal_list_reinstall_templates(hc_http_client_t *client);
char *hc_bare_metal_cancel_diagnostics(hc_http_client_t *client);
char *hc_bare_metal_list_diagnostics_templates(hc_http_client_t *client);
char *hc_bare_metal_get_diagnostics_status(hc_http_client_t *client);
char *hc_bare_metal_run_diagnostics(hc_http_client_t *client);
char *hc_bare_metal_list_rescue_templates(hc_http_client_t *client);
char *hc_bare_metal_get_rescue_status(hc_http_client_t *client);
char *hc_bare_metal_rescue(hc_http_client_t *client);
char *hc_bare_metal_cancel_rescue(hc_http_client_t *client);
char *hc_bare_metal_get_server_info(hc_http_client_t *client);
char *hc_bare_metal_update_hostname(hc_http_client_t *client);
char *hc_bare_metal_list_ips(hc_http_client_t *client);
char *hc_bare_metal_add_ip(hc_http_client_t *client);
char *hc_bare_metal_list_vlans(hc_http_client_t *client);
char *hc_bare_metal_get_ip_details(hc_http_client_t *client);
char *hc_bare_metal_edit_ip(hc_http_client_t *client);
char *hc_bare_metal_get_reinstall_details(hc_http_client_t *client);
char *hc_bare_metal_reinstall(hc_http_client_t *client);
char *hc_bare_metal_get_status(hc_http_client_t *client);
char *hc_bare_metal_power_action(hc_http_client_t *client);
char *hc_bare_metal_list_servers_in_stock(hc_http_client_t *client);

#endif
