import 'http_client.dart';

/// DNS: zones and records management for services
class DnsResource {
  final HttpClient httpClient;
  DnsResource(this.httpClient);

  /// GET /api/dns - List all DNS zones
  Future<Map<String, dynamic>> list([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/dns', params);
  }

  /// GET /api/service/{service_id}/dns - List DNS zones for service
  Future<Map<String, dynamic>> listForService([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{service_id}/dns', params);
  }

  /// POST /api/service/{service_id}/dns - Create DNS zone
  Future<Map<String, dynamic>> addZone([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{service_id}/dns', params);
  }

  /// GET /api/service/{service_id}/dns/{zone_id} - Get DNS zone details
  Future<Map<String, dynamic>> getZone([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{service_id}/dns/{zone_id}', params);
  }

  /// DELETE /api/service/{service_id}/dns/{zone_id} - Remove DNS zone
  Future<Map<String, dynamic>> deleteZone([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{service_id}/dns/{zone_id}', params);
  }

  /// POST /api/service/{service_id}/dns/{zone_id}/records - Add DNS record
  Future<Map<String, dynamic>> addRecord([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{service_id}/dns/{zone_id}/records', params);
  }

  /// PUT /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Edit DNS record
  Future<Map<String, dynamic>> editRecord([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/service/{service_id}/dns/{zone_id}/records/{record_id}', params);
  }

  /// DELETE /api/service/{service_id}/dns/{zone_id}/records/{record_id} - Remove DNS record
  Future<Map<String, dynamic>> deleteRecord([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{service_id}/dns/{zone_id}/records/{record_id}', params);
  }

}
