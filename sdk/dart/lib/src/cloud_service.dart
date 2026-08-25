import 'http_client.dart';

/// Cloud Service: VM shutdown, reset, hostname, IP pools, networks, interfaces
class CloudServiceResource {
  final HttpClient httpClient;
  CloudServiceResource(this.httpClient);

  /// POST /api/service/{id}/vms/{vmid}/shutdown - Perform graceful shutdown
  Future<Map<String, dynamic>> shutdownVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/shutdown', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/reset - Reset virtual server power
  Future<Map<String, dynamic>> resetVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/reset', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/hostname - Update VM hostname
  Future<Map<String, dynamic>> changeHostname([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/hostname', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/ippool - List IP pools
  Future<Map<String, dynamic>> listIpPools([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/ippool', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/ippool/{pool} - Allocate new IP
  Future<Map<String, dynamic>> allocateIp([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/ippool/{pool}', params);
  }

  /// GET /api/service/{id}/networks - List available networks
  Future<Map<String, dynamic>> listNetworks([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/networks', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/interfaces - Add network interface
  Future<Map<String, dynamic>> addInterface([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/interfaces', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface} - Get interface details
  Future<Map<String, dynamic>> getInterface([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/interfaces/{iface}', params);
  }

  /// PUT /api/service/{id}/vms/{vmid}/interfaces/{iface} - Update interface
  Future<Map<String, dynamic>> updateInterface([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{id}/vms/{vmid}/interfaces/{iface}', params);
  }

  /// DELETE /api/service/{id}/vms/{vmid}/interfaces/{iface} - Remove interface
  Future<Map<String, dynamic>> removeInterface([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{id}/vms/{vmid}/interfaces/{iface}', params);
  }

}
