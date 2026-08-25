import 'http_client.dart';

/// Virtualizor: VPS management via Virtualizor panel
class VirtualizorResource {
  final HttpClient httpClient;
  VirtualizorResource(this.httpClient);

  /// POST /api/service/{id}/vms/{vmid}/suspend - Suspend virtual server
  Future<Map<String, dynamic>> suspend([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/suspend', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/unsuspend - Unsuspend virtual server
  Future<Map<String, dynamic>> unsuspend([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/unsuspend', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/rebuild - List rebuild templates
  Future<Map<String, dynamic>> listRebuildTemplates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/rebuild', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/addsshkey - Change SSH key
  Future<Map<String, dynamic>> changeSshKey([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/addsshkey', params);
  }

}
