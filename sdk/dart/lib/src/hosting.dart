import 'http_client.dart';

/// Hosting Services: reinstall, status, bandwidth, reset
class HostingResource {
  final HttpClient httpClient;
  HostingResource(this.httpClient);

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

  /// GET /api/service/{id}/bandwidth-graphs - Return bandwidth usage graphs
  Future<Map<String, dynamic>> getBandwidthGraphs([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/bandwidth-graphs', params);
  }

  /// GET /api/service/{id}/bandwidth - Return bandwidth usage and billing
  Future<Map<String, dynamic>> getBandwidthUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/bandwidth', params);
  }

  /// POST /api/service/{id}/reset - Reset server
  Future<Map<String, dynamic>> reset([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/reset', params);
  }

}
