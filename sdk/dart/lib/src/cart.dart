import 'http_client.dart';

/// Cart: shopping cart management
class CartResource {
  final HttpClient httpClient;
  CartResource(this.httpClient);

  /// GET /api/category - Return a list of product categories
  Future<Map<String, dynamic>> listCategories([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/category', params);
  }

  /// GET /api/category/{category_id}/product - List products in category
  Future<Map<String, dynamic>> listProducts([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/category/{category_id}/product', params);
  }

  /// GET /api/order/{product_id} - Get product configuration details
  Future<Map<String, dynamic>> getProductConfig([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/order/{product_id}', params);
  }

  /// POST /api/order/{product_id} - Order new service
  Future<Map<String, dynamic>> orderProduct([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/order/{product_id}', params);
  }

  /// POST /api/order - Order multiple services
  Future<Map<String, dynamic>> orderMultiple([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/order', params);
  }

  /// POST /api/quote - Calculate order cost and recurring prices
  Future<Map<String, dynamic>> getQuote([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/quote', params);
  }

}
