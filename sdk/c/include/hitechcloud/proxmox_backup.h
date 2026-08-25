#ifndef HITECHCLOUD_PROXMOX_BACKUP_H
#define HITECHCLOUD_PROXMOX_BACKUP_H

#include "http_client.h"

/* Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token */
char *hc_proxmox_backup_get_connection_info(hc_http_client_t *client);
char *hc_proxmox_backup_get_credentials(hc_http_client_t *client);
char *hc_proxmox_backup_get_usage(hc_http_client_t *client);
char *hc_proxmox_backup_get_metrics(hc_http_client_t *client);
char *hc_proxmox_backup_list_snapshots(hc_http_client_t *client);
char *hc_proxmox_backup_list_groups(hc_http_client_t *client);
char *hc_proxmox_backup_change_password(hc_http_client_t *client);
char *hc_proxmox_backup_rotate_token(hc_http_client_t *client);
char *hc_proxmox_backup_revoke_token(hc_http_client_t *client);

#endif
