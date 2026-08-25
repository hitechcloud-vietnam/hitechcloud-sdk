#ifndef HITECHCLOUD_PROXMOX_H
#define HITECHCLOUD_PROXMOX_H

#include "http_client.h"

/* HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth */
char *hc_proxmox_get_status(hc_http_client_t *client);
char *hc_proxmox_power_action(hc_http_client_t *client);
char *hc_proxmox_list_vms(hc_http_client_t *client);
char *hc_proxmox_list_ips(hc_http_client_t *client);
char *hc_proxmox_set_rdns(hc_http_client_t *client);
char *hc_proxmox_list_backups(hc_http_client_t *client);
char *hc_proxmox_create_backup(hc_http_client_t *client);
char *hc_proxmox_list_snapshots(hc_http_client_t *client);
char *hc_proxmox_create_snapshot(hc_http_client_t *client);
char *hc_proxmox_get_bandwidth_usage(hc_http_client_t *client);

#endif
