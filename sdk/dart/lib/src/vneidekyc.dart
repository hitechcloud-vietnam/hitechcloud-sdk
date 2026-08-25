import 'http_client.dart';

/// VNeIDEKYC: eKYC identity verification and organization verification
class VNeIdeKycResource {
  final HttpClient httpClient;
  VNeIdeKycResource(this.httpClient);

  /// GET /api/vneidekyc/ekyc/session - Start personal eKYC session
  Future<Map<String, dynamic>> startPersonalEkyc([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/vneidekyc/ekyc/session', params);
  }

  /// GET /api/vneidekyc/ekyc/session/{session_hash} - Get eKYC session
  Future<Map<String, dynamic>> getEkycSession([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/vneidekyc/ekyc/session/{session_hash}', params);
  }

  /// GET /api/vneidekyc/ekyc/list/{client_id} - List client eKYC sessions
  Future<Map<String, dynamic>> listClientSessions([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/vneidekyc/ekyc/list/{client_id}', params);
  }

  /// POST /api/vneidekyc/ekyc/{session_hash}/upload - Upload eKYC file
  Future<Map<String, dynamic>> uploadFile([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/ekyc/{session_hash}/upload', params);
  }

  /// POST /api/vneidekyc/ekyc/{session_hash}/submit - Submit eKYC
  Future<Map<String, dynamic>> submitEkyc([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/ekyc/{session_hash}/submit', params);
  }

  /// POST /api/vneidekyc/ekyc/{session_hash}/cancel - Cancel eKYC session
  Future<Map<String, dynamic>> cancelSession([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/ekyc/{session_hash}/cancel', params);
  }

  /// POST /api/vneidekyc/ekyc/{session_hash}/accept - Admin: accept eKYC
  Future<Map<String, dynamic>> acceptEkyc([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/ekyc/{session_hash}/accept', params);
  }

  /// POST /api/vneidekyc/ekyc/{session_hash}/reject - Admin: reject eKYC
  Future<Map<String, dynamic>> rejectEkyc([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/ekyc/{session_hash}/reject', params);
  }

  /// POST /api/vneidekyc/org/lookup - Organization tax code lookup
  Future<Map<String, dynamic>> lookupOrganization([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/org/lookup', params);
  }

  /// POST /api/vneidekyc/org/start - Start organization verification
  Future<Map<String, dynamic>> startOrgVerification([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/org/start', params);
  }

  /// GET /api/vneidekyc/org/{org_hash} - Get organization record
  Future<Map<String, dynamic>> getOrganization([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/vneidekyc/org/{org_hash}', params);
  }

  /// POST /api/vneidekyc/org/{org_hash}/accept - Admin: accept organization
  Future<Map<String, dynamic>> acceptOrganization([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/org/{org_hash}/accept', params);
  }

  /// POST /api/vneidekyc/org/{org_hash}/reject - Admin: reject organization
  Future<Map<String, dynamic>> rejectOrganization([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/org/{org_hash}/reject', params);
  }

  /// POST /api/vneidekyc/pdf/upload - Upload signed PDF
  Future<Map<String, dynamic>> uploadSignedPdf([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/vneidekyc/pdf/upload', params);
  }

  /// GET /api/vneidekyc/pdf/{pdf_hash} - Get signed PDF record
  Future<Map<String, dynamic>> getSignedPdf([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/vneidekyc/pdf/{pdf_hash}', params);
  }

  /// GET /api/vneidekyc/client/{client_id}/status - Client verification status
  Future<Map<String, dynamic>> getClientStatus([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/vneidekyc/client/{client_id}/status', params);
  }

}
