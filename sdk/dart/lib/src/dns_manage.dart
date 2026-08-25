import 'http_client.dart';

/// DNS Manage: domain DNS records, DNSSEC, nameserver registration
class DnsManageResource {
  final HttpClient httpClient;
  DnsManageResource(this.httpClient);

  /// GET /api/domain/{id}/dns - List DNS records
  Future<Map<String, dynamic>> getRecords([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/dns', params);
  }

  /// POST /api/domain/{id}/dns - Create DNS record
  Future<Map<String, dynamic>> createRecord([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/domain/{id}/dns', params);
  }

  /// PUT /api/domain/{id}/dns/{index} - Update DNS record
  Future<Map<String, dynamic>> updateRecord([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/domain/{id}/dns/{index}', params);
  }

  /// DELETE /api/domain/{id}/dns/{index} - Remove DNS record
  Future<Map<String, dynamic>> deleteRecord([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/domain/{id}/dns/{index}', params);
  }

  /// GET /api/domain/{id}/dns/types - List supported record types
  Future<Map<String, dynamic>> getRecordTypes([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/dns/types', params);
  }

  /// GET /api/domain/{id}/dnssec/flags - Get available DNSSEC flags
  Future<Map<String, dynamic>> getDnssecFlags([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/dnssec/flags', params);
  }

  /// GET /api/domain/{id}/dnssec - Get DNSSEC records
  Future<Map<String, dynamic>> getDnssecRecords([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/dnssec', params);
  }

  /// POST /api/domain/{id}/dnssec - Create DNSSEC record
  Future<Map<String, dynamic>> createDnssecRecord([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/domain/{id}/dnssec', params);
  }

  /// DELETE /api/domain/{id}/dnssec - Remove DNSSEC record
  Future<Map<String, dynamic>> deleteDnssecRecord([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/domain/{id}/dnssec', params);
  }

  /// POST /api/domain/{id}/reg - Register domain nameserver
  Future<Map<String, dynamic>> registerNameserver([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/domain/{id}/reg', params);
  }

}
