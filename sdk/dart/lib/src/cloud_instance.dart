import 'http_client.dart';

/// Cloud Instance: full VM lifecycle management
class CloudInstanceResource {
  final HttpClient httpClient;
  CloudInstanceResource(this.httpClient);

  /// GET /api/service/{id}/vms - List virtual servers
  Future<Map<String, dynamic>> listVms([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms', params);
  }

  /// POST /api/service/{id}/vms - Create new virtual server
  Future<Map<String, dynamic>> createVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms', params);
  }

  /// GET /api/service/{id}/vms/{vmid} - Get VM details
  Future<Map<String, dynamic>> getVm([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}', params);
  }

  /// DELETE /api/service/{id}/vms/{vmid} - Remove virtual server
  Future<Map<String, dynamic>> destroyVm([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{id}/vms/{vmid}', params);
  }

  /// PUT /api/service/{id}/vms/{vmid} - Edit/resize virtual server
  Future<Map<String, dynamic>> resizeVm([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{id}/vms/{vmid}', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/stop - Stop virtual server
  Future<Map<String, dynamic>> stopVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/stop', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/start - Start virtual server
  Future<Map<String, dynamic>> startVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/start', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/reboot - Reboot virtual server
  Future<Map<String, dynamic>> rebootVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/reboot', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/resetpwd - Reset root password
  Future<Map<String, dynamic>> resetPassword([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/resetpwd', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/rebuild - Rebuild server
  Future<Map<String, dynamic>> rebuildVm([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/rebuild', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/ips - List IPs assigned to VM
  Future<Map<String, dynamic>> listVmIps([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/ips', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/ips - Assign IP to VM
  Future<Map<String, dynamic>> assignIp([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/ips', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/interfaces - List network interfaces
  Future<Map<String, dynamic>> listInterfaces([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/interfaces', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/usage/cpu - CPU usage graph
  Future<Map<String, dynamic>> getCpuUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/usage/cpu', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/usage/net - Network usage graph
  Future<Map<String, dynamic>> getNetworkUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/usage/net', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/usage/disk - Disk usage graph
  Future<Map<String, dynamic>> getDiskUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/usage/disk', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/storage - List disks attached to VM
  Future<Map<String, dynamic>> listDisks([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/storage', params);
  }

  /// PUT /api/service/{id}/vms/{vmid}/storage/{diskid} - Resize disk
  Future<Map<String, dynamic>> resizeDisk([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{id}/vms/{vmid}/storage/{diskid}', params);
  }

  /// GET /api/service/{id}/images - List ISO images
  Future<Map<String, dynamic>> listIsoImages([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/images', params);
  }

  /// POST /api/service/{id}/images - Add ISO image
  Future<Map<String, dynamic>> addIsoImage([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/images', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/interfaces/{iface}/ips - List available IPs
  Future<Map<String, dynamic>> listAvailableIps([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/interfaces/{iface}/ips', params);
  }

  /// DELETE /api/service/{id}/vms/{vmid}/ips/{ipid} - Remove IP from VM
  Future<Map<String, dynamic>> removeIp([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{id}/vms/{vmid}/ips/{ipid}', params);
  }

  /// GET /api/service/{id}/vms/{vmid}/rdns - Get reverse DNS entries
  Future<Map<String, dynamic>> getRdns([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vms/{vmid}/rdns', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/rdns - Update reverse DNS entries
  Future<Map<String, dynamic>> updateRdns([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/rdns', params);
  }

  /// POST /api/service/{id}/vms/{vmid}/rebuild_network - Rebuild network
  Future<Map<String, dynamic>> rebuildNetwork([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/vms/{vmid}/rebuild_network', params);
  }

}
