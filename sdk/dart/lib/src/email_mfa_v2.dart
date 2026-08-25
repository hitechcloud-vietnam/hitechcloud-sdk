import 'http_client.dart';

/// EmailMfaV2: email-based MFA management
class EmailMfaV2Resource {
  final HttpClient httpClient;
  EmailMfaV2Resource(this.httpClient);

  /// GET /api/email_mfa_v2/status/{user_type}/{user_id} - Get MFA status
  Future<Map<String, dynamic>> getMfaStatus([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/email_mfa_v2/status/{user_type}/{user_id}', params);
  }

  /// POST /api/email_mfa_v2/send - Send one-time code
  Future<Map<String, dynamic>> sendCode([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/email_mfa_v2/send', params);
  }

  /// POST /api/email_mfa_v2/verify - Verify one-time code
  Future<Map<String, dynamic>> verifyCode([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/email_mfa_v2/verify', params);
  }

  /// GET /api/email_mfa_v2/list/{user_type}/{user_id} - List active codes
  Future<Map<String, dynamic>> listActiveCodes([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/email_mfa_v2/list/{user_type}/{user_id}', params);
  }

  /// POST /api/email_mfa_v2/revokeall - Revoke all active codes
  Future<Map<String, dynamic>> revokeAllCodes([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/email_mfa_v2/revokeall', params);
  }

  /// POST /api/email_mfa_v2/disable - Disable MFA entirely
  Future<Map<String, dynamic>> disableMfa([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/email_mfa_v2/disable', params);
  }

}
