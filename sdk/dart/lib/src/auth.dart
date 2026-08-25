import 'http_client.dart';

/// Account Authentication: login, logout, token refresh, signup, password reset
class AuthResource {
  final HttpClient httpClient;
  AuthResource(this.httpClient);

  /// POST /api/login - Authenticate and obtain access token
  Future<Map<String, dynamic>> login([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/login', params);
  }

  /// POST /api/logout - Invalidate current access token
  Future<Map<String, dynamic>> logout([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/logout', params);
  }

  /// POST /api/token - Generate new token using refresh token
  Future<Map<String, dynamic>> refreshToken([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/token', params);
  }

  /// POST /api/revoke - Invalidate authorization and refresh token
  Future<Map<String, dynamic>> revokeToken([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/revoke', params);
  }

  /// POST /api/passwordreset - Request password reset email
  Future<Map<String, dynamic>> passwordReset([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/passwordreset', params);
  }

  /// POST /api/signup - Create new account
  Future<Map<String, dynamic>> signup([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/signup', params);
  }

}
