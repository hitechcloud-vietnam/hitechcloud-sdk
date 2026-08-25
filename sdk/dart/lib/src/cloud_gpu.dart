import 'http_client.dart';

/// Cloud GPU: GPU instance management
class CloudGpuResource {
  final HttpClient httpClient;
  CloudGpuResource(this.httpClient);

  /// PUT /api/service/{id}/vms/reboot - Reboot virtual server
  Future<Map<String, dynamic>> reboot([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{id}/vms/reboot', params);
  }

  /// PUT /api/service/{id}/vms/stop - Stop virtual server
  Future<Map<String, dynamic>> stop([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{id}/vms/stop', params);
  }

  /// PUT /api/service/{id}/vms/start - Start virtual server
  Future<Map<String, dynamic>> start([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{id}/vms/start', params);
  }

  /// GET /api/service/{id}/vms/firewall - Get firewall rules
  Future<Map<String, dynamic>> getFirewallRules([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/firewall', params);
  }

  /// POST /api/service/{id}/vms/firewall - Add firewall rules
  Future<Map<String, dynamic>> addFirewallRules([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/firewall', params);
  }

  /// DELETE /api/service/{id}/vms/firewall/{position} - Remove firewall rule
  Future<Map<String, dynamic>> removeFirewallRule([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{id}/vms/firewall/{position}', params);
  }

}
