import 'http_client.dart';

/// User Profile: view/update account details, logs
class UsersResource {
  final HttpClient httpClient;
  UsersResource(this.httpClient);

  /// GET /api/details - Return registration details for my account
  Future<Map<String, dynamic>> getDetails([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/details', params);
  }

  /// PUT /api/details - Update registration details
  Future<Map<String, dynamic>> updateDetails([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/details', params);
  }

  /// GET /api/logs - Returns logs from history
  Future<Map<String, dynamic>> getLogs([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/logs', params);
  }

}
