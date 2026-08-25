import 'http_client.dart';

/// Network Services: IP addresses and reverse DNS for services
class NetworkServicesResource {
  final HttpClient httpClient;
  NetworkServicesResource(this.httpClient);

  /// GET /api/service/{id}/ip - List Service IP Addresses
  Future<Map<String, dynamic>> listIps([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/ip', params);
  }

  /// GET /api/service/{id}/rdns - Get reverse DNS entries
  Future<Map<String, dynamic>> getRdns([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/rdns', params);
  }

  /// POST /api/service/{id}/rdns - Update reverse DNS entries
  Future<Map<String, dynamic>> updateRdns([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/rdns', params);
  }

}
