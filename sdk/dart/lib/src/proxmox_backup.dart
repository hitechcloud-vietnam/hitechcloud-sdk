import 'http_client.dart';

/// Proxmox Backup: PBS connection, credentials, usage, snapshots, groups, password, token
class ProxmoxBackupResource {
  final HttpClient httpClient;
  ProxmoxBackupResource(this.httpClient);

  /// GET /api/service/{id}/pbs - Get backup connection info
  Future<Map<String, dynamic>> getConnectionInfo([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pbs', params);
  }

  /// GET /api/service/{id}/pbs/credentials - Get backup credentials
  Future<Map<String, dynamic>> getCredentials([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pbs/credentials', params);
  }

  /// GET /api/service/{id}/pbs/usage - Get backup usage
  Future<Map<String, dynamic>> getUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pbs/usage', params);
  }

  /// GET /api/service/{id}/pbs/metrics - Get backup metrics
  Future<Map<String, dynamic>> getMetrics([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pbs/metrics', params);
  }

  /// GET /api/service/{id}/pbs/snapshots - List snapshots
  Future<Map<String, dynamic>> listSnapshots([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pbs/snapshots', params);
  }

  /// GET /api/service/{id}/pbs/groups - List backup groups
  Future<Map<String, dynamic>> listGroups([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pbs/groups', params);
  }

  /// POST /api/service/{id}/pbs/password - Change backup password
  Future<Map<String, dynamic>> changePassword([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/pbs/password', params);
  }

  /// POST /api/service/{id}/pbs/token - Rotate API token
  Future<Map<String, dynamic>> rotateToken([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/pbs/token', params);
  }

  /// DELETE /api/service/{id}/pbs/token - Revoke API token
  Future<Map<String, dynamic>> revokeToken([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{id}/pbs/token', params);
  }

}
