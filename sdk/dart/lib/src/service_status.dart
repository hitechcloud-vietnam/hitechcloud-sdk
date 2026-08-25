import 'http_client.dart';

/// Service Status: list and manage service statuses
class ServiceStatusResource {
  final HttpClient httpClient;
  ServiceStatusResource(this.httpClient);

  /// GET /api/statuses - Returns a list of all statuses
  Future<Map<String, dynamic>> list([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/statuses', params);
  }

  /// PUT /api/statuses/{id} - Returns details of status
  Future<Map<String, dynamic>> get([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/statuses/{id}', params);
  }

}
