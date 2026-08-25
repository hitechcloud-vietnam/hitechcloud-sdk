import 'http_client.dart';

/// Bare Metal & Colocation: reinstall, diagnostics, rescue, server info, IPs, VLANs, power
class BareMetalResource {
  final HttpClient httpClient;
  BareMetalResource(this.httpClient);

  /// GET /api/service/{id}/reinstall/templates - List OS templates and recipes
  Future<Map<String, dynamic>> listReinstallTemplates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/reinstall/templates', params);
  }

  /// POST /api/service/{id}/diag/cancel - Cancel diagnostics operation
  Future<Map<String, dynamic>> cancelDiagnostics([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/diag/cancel', params);
  }

  /// GET /api/service/{id}/diag/templates - List diagnostics templates
  Future<Map<String, dynamic>> listDiagnosticsTemplates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/diag/templates', params);
  }

  /// GET /api/service/{id}/diag - Show diagnostic operation status
  Future<Map<String, dynamic>> getDiagnosticsStatus([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/diag', params);
  }

  /// POST /api/service/{id}/diag - Start new diagnostic operation
  Future<Map<String, dynamic>> runDiagnostics([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/diag', params);
  }

  /// GET /api/service/{id}/rescue/templates - List rescue templates
  Future<Map<String, dynamic>> listRescueTemplates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/rescue/templates', params);
  }

  /// GET /api/service/{id}/rescue - Show rescue operation status
  Future<Map<String, dynamic>> getRescueStatus([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/rescue', params);
  }

  /// POST /api/service/{id}/rescue - Start rescue operation
  Future<Map<String, dynamic>> rescue([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/rescue', params);
  }

  /// POST /api/service/{id}/rescue/cancel - Cancel rescue operation
  Future<Map<String, dynamic>> cancelRescue([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/rescue/cancel', params);
  }

  /// GET /api/service/{id}/info - Get server hardware and OS details
  Future<Map<String, dynamic>> getServerInfo([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/info', params);
  }

  /// POST /api/service/{id}/hostname - Update server hostname
  Future<Map<String, dynamic>> updateHostname([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/hostname', params);
  }

  /// GET /api/service/{id}/ips - List server IPs
  Future<Map<String, dynamic>> listIps([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/ips', params);
  }

  /// POST /api/service/{id}/ips - Add new IP to server
  Future<Map<String, dynamic>> addIp([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/ips', params);
  }

  /// GET /api/service/{id}/vlans - List available VLANs
  Future<Map<String, dynamic>> listVlans([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/vlans', params);
  }

  /// GET /api/service/{id}/ips/{ip} - Get IP details
  Future<Map<String, dynamic>> getIpDetails([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/ips/{ip}', params);
  }

  /// PUT /api/service/{id}/ips/{ip} - Edit IP
  Future<Map<String, dynamic>> editIp([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{id}/ips/{ip}', params);
  }

  /// GET /api/service/{id}/reinstall - Return installation options
  Future<Map<String, dynamic>> getReinstallDetails([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/reinstall', params);
  }

  /// POST /api/service/{id}/reinstall - Reinstall server
  Future<Map<String, dynamic>> reinstall([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/reinstall', params);
  }

  /// GET /api/service/{id}/status - Return server power status
  Future<Map<String, dynamic>> getStatus([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/status', params);
  }

  /// POST /api/service/{id}/power/{action} - Power action (start/stop/reboot/reset/shutdown)
  Future<Map<String, dynamic>> powerAction([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/power/{action}', params);
  }

  /// GET /api/serverstock - List servers in stock
  Future<Map<String, dynamic>> listServersInStock([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/serverstock', params);
  }

}
