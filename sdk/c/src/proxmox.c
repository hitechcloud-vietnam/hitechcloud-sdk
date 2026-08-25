#include "hitechcloud/proxmox.h"
#include <stdlib.h>


/* GET /api/service/{id}/htcpve/status - Get machine status */
char *hc_proxmox_get_status(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpve/status", NULL);
}

/* POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset) */
char *hc_proxmox_power_action(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/htcpve/power", NULL);
}

/* GET /api/service/{id}/htcpve/vms - List machines */
char *hc_proxmox_list_vms(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpve/vms", NULL);
}

/* GET /api/service/{id}/htcpve/ips - List addresses */
char *hc_proxmox_list_ips(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpve/ips", NULL);
}

/* POST /api/service/{id}/htcpve/rdns - Set reverse DNS */
char *hc_proxmox_set_rdns(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/htcpve/rdns", NULL);
}

/* GET /api/service/{id}/htcpve/backups - List backups */
char *hc_proxmox_list_backups(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpve/backups", NULL);
}

/* POST /api/service/{id}/htcpve/backups - Create backup */
char *hc_proxmox_create_backup(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/htcpve/backups", NULL);
}

/* GET /api/service/{id}/htcpve/snapshots - List snapshots */
char *hc_proxmox_list_snapshots(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpve/snapshots", NULL);
}

/* POST /api/service/{id}/htcpve/snapshots - Create snapshot */
char *hc_proxmox_create_snapshot(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/htcpve/snapshots", NULL);
}

/* GET /api/service/{id}/htcpve/usage - Get bandwidth usage */
char *hc_proxmox_get_bandwidth_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/htcpve/usage", NULL);
}

