#include "hitechcloud/proxmox_backup.h"
#include <stdlib.h>


/* GET /api/service/{id}/pbs - Get backup connection info */
char *hc_proxmox_backup_get_connection_info(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pbs", NULL);
}

/* GET /api/service/{id}/pbs/credentials - Get backup credentials */
char *hc_proxmox_backup_get_credentials(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pbs/credentials", NULL);
}

/* GET /api/service/{id}/pbs/usage - Get backup usage */
char *hc_proxmox_backup_get_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pbs/usage", NULL);
}

/* GET /api/service/{id}/pbs/metrics - Get backup metrics */
char *hc_proxmox_backup_get_metrics(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pbs/metrics", NULL);
}

/* GET /api/service/{id}/pbs/snapshots - List snapshots */
char *hc_proxmox_backup_list_snapshots(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pbs/snapshots", NULL);
}

/* GET /api/service/{id}/pbs/groups - List backup groups */
char *hc_proxmox_backup_list_groups(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/pbs/groups", NULL);
}

/* POST /api/service/{id}/pbs/password - Change backup password */
char *hc_proxmox_backup_change_password(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/pbs/password", NULL);
}

/* POST /api/service/{id}/pbs/token - Rotate API token */
char *hc_proxmox_backup_rotate_token(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/pbs/token", NULL);
}

/* DELETE /api/service/{id}/pbs/token - Revoke API token */
char *hc_proxmox_backup_revoke_token(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{id}/pbs/token", NULL);
}

