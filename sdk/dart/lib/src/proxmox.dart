import 'http_client.dart';

/// HiTechCloudProxmox: machine status, power, VMs, IPs, backups, snapshots, bandwidth
class ProxmoxResource {
  final HttpClient httpClient;
  ProxmoxResource(this.httpClient);

  /// GET /api/service/{id}/htcpve/status - Get machine status
  Future<Map<String, dynamic>> getStatus([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpve/status', params);
  }

  /// POST /api/service/{id}/htcpve/power - Power action (start/stop/shutdown/reboot/reset)
  Future<Map<String, dynamic>> powerAction([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/htcpve/power', params);
  }

  /// GET /api/service/{id}/htcpve/vms - List machines
  Future<Map<String, dynamic>> listVms([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpve/vms', params);
  }

  /// GET /api/service/{id}/htcpve/ips - List addresses
  Future<Map<String, dynamic>> listIps([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpve/ips', params);
  }

  /// POST /api/service/{id}/htcpve/rdns - Set reverse DNS
  Future<Map<String, dynamic>> setRdns([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/htcpve/rdns', params);
  }

  /// GET /api/service/{id}/htcpve/backups - List backups
  Future<Map<String, dynamic>> listBackups([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpve/backups', params);
  }

  /// POST /api/service/{id}/htcpve/backups - Create backup
  Future<Map<String, dynamic>> createBackup([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/htcpve/backups', params);
  }

  /// GET /api/service/{id}/htcpve/snapshots - List snapshots
  Future<Map<String, dynamic>> listSnapshots([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpve/snapshots', params);
  }

  /// POST /api/service/{id}/htcpve/snapshots - Create snapshot
  Future<Map<String, dynamic>> createSnapshot([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/htcpve/snapshots', params);
  }

  /// GET /api/service/{id}/htcpve/usage - Get bandwidth usage
  Future<Map<String, dynamic>> getBandwidthUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpve/usage', params);
  }

}
