import 'http_client.dart';

/// Services: list, details, cancel, renew, billing cycle
class ServicesResource {
  final HttpClient httpClient;
  ServicesResource(this.httpClient);

  /// GET /api/service - List all services
  Future<Map<String, dynamic>> list([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service', params);
  }

  /// GET /api/service/{id} - Return service details
  Future<Map<String, dynamic>> get([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}', params);
  }

  /// GET /api/service/{id}/methods - List methods available for service
  Future<Map<String, dynamic>> listMethods([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/methods', params);
  }

  /// POST /api/service/{id}/cancel - Request service cancellation
  Future<Map<String, dynamic>> cancel([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/cancel', params);
  }

  /// GET /api/service/{id}/label - Show current service label
  Future<Map<String, dynamic>> getLabel([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/label', params);
  }

  /// POST /api/service/{id}/label - Set new custom label
  Future<Map<String, dynamic>> setLabel([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/label', params);
  }

  /// POST /api/service/{id}/renew - Generate renewal invoice
  Future<Map<String, dynamic>> renew([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/renew', params);
  }

  /// GET /api/service/{id}/cycle - Get billing cycle options
  Future<Map<String, dynamic>> listBillingCycles([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/cycle', params);
  }

  /// POST /api/service/{id}/cycle - Change billing cycle
  Future<Map<String, dynamic>> changeBillingCycle([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/cycle', params);
  }

}
