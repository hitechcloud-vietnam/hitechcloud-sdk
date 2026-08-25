import 'http_client.dart';

/// URL Shortener: shorten URLs, manage links, stats
class UrlShortenerResource {
  final HttpClient httpClient;
  UrlShortenerResource(this.httpClient);

  /// POST /api/url-shortener/shorten - Shorten a URL
  Future<Map<String, dynamic>> shorten([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/url-shortener/shorten', params);
  }

  /// GET /api/url-shortener/links - List links
  Future<Map<String, dynamic>> listLinks([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/url-shortener/links', params);
  }

  /// GET /api/url-shortener/config - Get shortener config
  Future<Map<String, dynamic>> getConfig([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/url-shortener/config', params);
  }

  /// GET /api/url-shortener/stats - Get link stats
  Future<Map<String, dynamic>> getStats([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/url-shortener/stats', params);
  }

  /// GET /api/url-shortener/links/{id} - Get link details
  Future<Map<String, dynamic>> getLink([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/url-shortener/links/{id}', params);
  }

  /// DELETE /api/url-shortener/links/{id} - Delete link
  Future<Map<String, dynamic>> deleteLink([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/url-shortener/links/{id}', params);
  }

}
