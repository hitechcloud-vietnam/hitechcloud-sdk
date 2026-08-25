#include "hitechcloud/bare_metal.h"
#include <stdlib.h>


/* GET /api/service/{id}/reinstall/templates - List OS templates and recipes */
char *hc_bare_metal_list_reinstall_templates(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/reinstall/templates", NULL);
}

/* POST /api/service/{id}/diag/cancel - Cancel diagnostics operation */
char *hc_bare_metal_cancel_diagnostics(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/diag/cancel", NULL);
}

/* GET /api/service/{id}/diag/templates - List diagnostics templates */
char *hc_bare_metal_list_diagnostics_templates(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/diag/templates", NULL);
}

/* GET /api/service/{id}/diag - Show diagnostic operation status */
char *hc_bare_metal_get_diagnostics_status(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/diag", NULL);
}

/* POST /api/service/{id}/diag - Start new diagnostic operation */
char *hc_bare_metal_run_diagnostics(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/diag", NULL);
}

/* GET /api/service/{id}/rescue/templates - List rescue templates */
char *hc_bare_metal_list_rescue_templates(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/rescue/templates", NULL);
}

/* GET /api/service/{id}/rescue - Show rescue operation status */
char *hc_bare_metal_get_rescue_status(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/rescue", NULL);
}

/* POST /api/service/{id}/rescue - Start rescue operation */
char *hc_bare_metal_rescue(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/rescue", NULL);
}

/* POST /api/service/{id}/rescue/cancel - Cancel rescue operation */
char *hc_bare_metal_cancel_rescue(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/rescue/cancel", NULL);
}

/* GET /api/service/{id}/info - Get server hardware and OS details */
char *hc_bare_metal_get_server_info(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/info", NULL);
}

/* POST /api/service/{id}/hostname - Update server hostname */
char *hc_bare_metal_update_hostname(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/hostname", NULL);
}

/* GET /api/service/{id}/ips - List server IPs */
char *hc_bare_metal_list_ips(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/ips", NULL);
}

/* POST /api/service/{id}/ips - Add new IP to server */
char *hc_bare_metal_add_ip(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/ips", NULL);
}

/* GET /api/service/{id}/vlans - List available VLANs */
char *hc_bare_metal_list_vlans(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/vlans", NULL);
}

/* GET /api/service/{id}/ips/{ip} - Get IP details */
char *hc_bare_metal_get_ip_details(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/ips/{ip}", NULL);
}

/* PUT /api/service/{id}/ips/{ip} - Edit IP */
char *hc_bare_metal_edit_ip(hc_http_client_t *client) {
    return hc_put(client, "/api/service/{id}/ips/{ip}", NULL);
}

/* GET /api/service/{id}/reinstall - Return installation options */
char *hc_bare_metal_get_reinstall_details(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/reinstall", NULL);
}

/* POST /api/service/{id}/reinstall - Reinstall server */
char *hc_bare_metal_reinstall(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/reinstall", NULL);
}

/* GET /api/service/{id}/status - Return server power status */
char *hc_bare_metal_get_status(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/status", NULL);
}

/* POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown) */
char *hc_bare_metal_power_action(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/power/{action}", NULL);
}

/* GET /api/serverstock - List servers in stock */
char *hc_bare_metal_list_servers_in_stock(hc_http_client_t *client) {
    return hc_get(client, "/api/serverstock", NULL);
}

