import 'http_client.dart';

/// Collocation Services: PDU port management
class CollocationResource {
  final HttpClient httpClient;
  CollocationResource(this.httpClient);

  /// GET /api/service/{id}/pdu - List PDU ports assigned to service
  Future<Map<String, dynamic>> listPduPorts([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pdu', params);
  }

  /// GET /api/service/{id}/pdu/{port} - Get PDU port/outlet state
  Future<Map<String, dynamic>> getPduPortState([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/pdu/{port}', params);
  }

  /// POST /api/service/{id}/pdu/{port} - Set PDU port/outlet state
  Future<Map<String, dynamic>> setPduPortStatus([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/pdu/{port}', params);
  }

}
