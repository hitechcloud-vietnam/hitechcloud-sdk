import 'http_client.dart';

/// Cloud Virtual Machine: upgrade, resources, templates, ISO, boot, PXE
class CloudVmResource {
  final HttpClient httpClient;
  CloudVmResource(this.httpClient);

  /// GET /api/service/{id}/upgrade - List resource upgrade options
  Future<Map<String, dynamic>> getUpgradeOptions([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/upgrade', params);
  }

  /// POST /api/service/{id}/upgrade - Estimate or request upgrade
  Future<Map<String, dynamic>> requestUpgrade([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/upgrade', params);
  }

  /// GET /api/service/{id}/resources - Show available and used resources
  Future<Map<String, dynamic>> getResources([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/resources', params);
  }

  /// GET /api/service/{id}/templates/{vmid} - List rebuild templates
  Future<Map<String, dynamic>> listRebuildTemplates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/templates/{vmid}', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/usage/memory - Memory usage graph
  Future<Map<String, dynamic>> getMemoryUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/usage/memory', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/images - List ISO images for VM
  Future<Map<String, dynamic>> listIsoImages([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/images', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/images - Mount/Unmount ISO image
  Future<Map<String, dynamic>> mountIso([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/images', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/boot - Change boot order
  Future<Map<String, dynamic>> setBootOrder([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/boot', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/tuntap - Enable PXE
  Future<Map<String, dynamic>> enablePxe([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/tuntap', params);
  }

}
