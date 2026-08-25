import 'http_client.dart';

/// PasskeyV2: passkey-based MFA management
class PasskeyV2Resource {
  final HttpClient httpClient;
  PasskeyV2Resource(this.httpClient);

  /// GET /api/passkeyv2/status/{user_type}/{user_id} - Get MFA status
  Future<Map<String, dynamic>> getMfaStatus([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/passkeyv2/status/{user_type}/{user_id}', params);
  }

  /// GET /api/passkeyv2/credentials/{user_type}/{user_id} - List passkey credentials
  Future<Map<String, dynamic>> listCredentials([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/passkeyv2/credentials/{user_type}/{user_id}', params);
  }

  /// POST /api/passkeyv2/credentials/{user_type}/{user_id}/delete - Delete credential
  Future<Map<String, dynamic>> deleteCredential([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/passkeyv2/credentials/{user_type}/{user_id}/delete', params);
  }

  /// POST /api/passkeyv2/email_otp/send - Send email OTP
  Future<Map<String, dynamic>> sendEmailOtp([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/passkeyv2/email_otp/send', params);
  }

  /// POST /api/passkeyv2/email_otp/verify - Verify email OTP
  Future<Map<String, dynamic>> verifyEmailOtp([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/passkeyv2/email_otp/verify', params);
  }

  /// POST /api/passkeyv2/disable/{user_type}/{user_id} - Disable MFA
  Future<Map<String, dynamic>> disableMfa([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/passkeyv2/disable/{user_type}/{user_id}', params);
  }

}
