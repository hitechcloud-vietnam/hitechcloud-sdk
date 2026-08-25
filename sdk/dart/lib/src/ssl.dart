import 'http_client.dart';

/// SSL Certificates: list, order, download certificates
class SSLResource {
  final HttpClient httpClient;
  SSLResource(this.httpClient);

  /// GET /api/certificate - List all SSL certificates
  Future<Map<String, dynamic>> list([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/certificate', params);
  }

  /// GET /api/certificate/{id} - Return certificate details
  Future<Map<String, dynamic>> get([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/certificate/{id}', params);
  }

  /// GET /api/certificate/{id}/crt - Download X.509 certificate
  Future<Map<String, dynamic>> download([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/certificate/{id}/crt', params);
  }

  /// GET /api/certificate/order - List available certificates for purchase
  Future<Map<String, dynamic>> listAvailable([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/certificate/order', params);
  }

  /// POST /api/certificate/order - Order new certificate
  Future<Map<String, dynamic>> order([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/certificate/order', params);
  }

  /// GET /api/certificate/order/{product_id}/software - List server software
  Future<Map<String, dynamic>> listServerSoftware([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/certificate/order/{product_id}/software', params);
  }

}
