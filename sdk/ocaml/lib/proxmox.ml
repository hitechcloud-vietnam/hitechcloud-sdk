(** HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth *)

(** GET /api/service/{id}/htcpve/status - Get machine status *)
let get_status client params =
  HttpClient.get client "/api/service/{id}/htcpve/status" params

(** POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset) *)
let power_action client params =
  HttpClient.post client "/api/service/{id}/htcpve/power" params

(** GET /api/service/{id}/htcpve/vms - List machines *)
let list_vms client params =
  HttpClient.get client "/api/service/{id}/htcpve/vms" params

(** GET /api/service/{id}/htcpve/ips - List addresses *)
let list_ips client params =
  HttpClient.get client "/api/service/{id}/htcpve/ips" params

(** POST /api/service/{id}/htcpve/rdns - Set reverse DNS *)
let set_rdns client params =
  HttpClient.post client "/api/service/{id}/htcpve/rdns" params

(** GET /api/service/{id}/htcpve/backups - List backups *)
let list_backups client params =
  HttpClient.get client "/api/service/{id}/htcpve/backups" params

(** POST /api/service/{id}/htcpve/backups - Create backup *)
let create_backup client params =
  HttpClient.post client "/api/service/{id}/htcpve/backups" params

(** GET /api/service/{id}/htcpve/snapshots - List snapshots *)
let list_snapshots client params =
  HttpClient.get client "/api/service/{id}/htcpve/snapshots" params

(** POST /api/service/{id}/htcpve/snapshots - Create snapshot *)
let create_snapshot client params =
  HttpClient.post client "/api/service/{id}/htcpve/snapshots" params

(** GET /api/service/{id}/htcpve/usage - Get bandwidth usage *)
let get_bandwidth_usage client params =
  HttpClient.get client "/api/service/{id}/htcpve/usage" params

