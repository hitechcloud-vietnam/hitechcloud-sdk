import 'http_client.dart';

/// Notifications: manage notification preferences
class NotificationsResource {
  final HttpClient httpClient;
  NotificationsResource(this.httpClient);

  /// GET /api/notifications - List all notifications
  Future<Map<String, dynamic>> list([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/notifications', params);
  }

  /// GET /api/notifications/new - Return only new portal notifications
  Future<Map<String, dynamic>> listNew([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/notifications/new', params);
  }

  /// PUT /api/notifications/{id}/ack - Mark notification as read
  Future<Map<String, dynamic>> acknowledge([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/notifications/{id}/ack', params);
  }

}
