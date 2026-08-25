import 'http_client.dart';

/// HiTechCloudPMG: mail filtering configuration and management
class PmgResource {
  final HttpClient httpClient;
  PmgResource(this.httpClient);

  /// GET /api/service/{id}/htcpmg/config - Get mail filtering configuration
  Future<Map<String, dynamic>> getConfig([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpmg/config', params);
  }

  /// POST /api/service/{id}/htcpmg/domains - Add a domain
  Future<Map<String, dynamic>> addDomain([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/htcpmg/domains', params);
  }

  /// POST /api/service/{id}/htcpmg/transport - Set target mail server
  Future<Map<String, dynamic>> setTransport([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/htcpmg/transport', params);
  }

  /// GET /api/service/{id}/htcpmg/stats - Get mail statistics
  Future<Map<String, dynamic>> getStats([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcpmg/stats', params);
  }

}
