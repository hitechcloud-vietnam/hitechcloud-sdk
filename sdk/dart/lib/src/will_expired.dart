import 'http_client.dart';

/// WillExpired: expiring services and domains management
class WillExpiredResource {
  final HttpClient httpClient;
  WillExpiredResource(this.httpClient);

  /// GET /api/willexpired - List expiring services and domains
  Future<Map<String, dynamic>> listExpiring([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired', params);
  }

  /// GET /api/willexpired/summary - Expiring summary
  Future<Map<String, dynamic>> getSummary([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired/summary', params);
  }

  /// GET /api/willexpired/config - Module configuration
  Future<Map<String, dynamic>> getConfig([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired/config', params);
  }

  /// GET /api/willexpired/invoices - Open renewal invoices
  Future<Map<String, dynamic>> listOpenInvoices([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired/invoices', params);
  }

  /// GET /api/willexpired/requests - Renewal request log
  Future<Map<String, dynamic>> listRequests([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired/requests', params);
  }

  /// GET /api/willexpired/export - Export all expiring items
  Future<Map<String, dynamic>> exportAll([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired/export', params);
  }

  /// GET /api/willexpired/{type}/{id} - Get item detail
  Future<Map<String, dynamic>> getItem([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired/{type}/{id}', params);
  }

  /// POST /api/willexpired/{type}/{id}/renew - Renew item
  Future<Map<String, dynamic>> renew([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/willexpired/{type}/{id}/renew', params);
  }

  /// GET /api/willexpired/{type}/{id}/autorenew - Get auto-renew status
  Future<Map<String, dynamic>> getAutorenew([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/willexpired/{type}/{id}/autorenew', params);
  }

  /// PUT /api/willexpired/{type}/{id}/autorenew - Set auto-renew
  Future<Map<String, dynamic>> setAutorenew([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/willexpired/{type}/{id}/autorenew', params);
  }

}
