import 'http_client.dart';

/// vCloudStack Public Cloud: rescue, unrescue, console, usage
class VCloudStackResource {
  final HttpClient httpClient;
  VCloudStackResource(this.httpClient);

  /// POST /api/service/{id}/vms/{vmid}/rescue - Reboot VM into rescue mode
  Future<Map<String, dynamic>> rescueVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/rescue', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/unrescue - Disable rescue mode
  Future<Map<String, dynamic>> unrescueVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/unrescue', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/console - Get VM console
  Future<Map<String, dynamic>> getConsole([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/console', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/usage - Get VM usage details
  Future<Map<String, dynamic>> getUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/usage', params);
  }

}
