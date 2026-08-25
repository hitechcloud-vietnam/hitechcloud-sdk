import 'http_client.dart';

/// Domains: WHOIS, nameservers, EPP, registration, contact, email forwarding
class DomainsResource {
  final HttpClient httpClient;
  DomainsResource(this.httpClient);

  /// GET /api/domain - List domains under your account
  Future<Map<String, dynamic>> list([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain', params);
  }

  /// GET /api/domain/{id} - Get domain details
  Future<Map<String, dynamic>> get([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}', params);
  }

  /// GET /api/domain/name/{name} - Get domain details by name
  Future<Map<String, dynamic>> getByName([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/name/{name}', params);
  }

  /// GET /api/whois/{domain} - WHOIS lookup
  Future<Map<String, dynamic>> whois([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/whois/{domain}', params);
  }

  /// GET /api/whoislookup/{domain} - Perform WHOIS lookup
  Future<Map<String, dynamic>> whoisLookup([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/whoislookup/{domain}', params);
  }

  /// GET /api/domain/availability/{domain} - Check domain availability
  Future<Map<String, dynamic>> checkAvailability([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/availability/{domain}', params);
  }

  /// GET /api/domain/{id}/ns - Get domain nameservers
  Future<Map<String, dynamic>> getNameservers([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/ns', params);
  }

  /// PUT /api/domain/{id}/ns - Update domain nameservers
  Future<Map<String, dynamic>> updateNameservers([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/domain/{id}/ns', params);
  }

  /// GET /api/domain/{id}/epp - Get domain EPP code
  Future<Map<String, dynamic>> getEppCode([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/epp', params);
  }

  /// GET /api/domain/{id}/sync - Synchronize domain
  Future<Map<String, dynamic>> sync([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/sync', params);
  }

  /// GET /api/domain/{id}/reglock - Get domain lock status
  Future<Map<String, dynamic>> getLock([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/reglock', params);
  }

  /// PUT /api/domain/{id}/reglock - Update domain lock
  Future<Map<String, dynamic>> updateLock([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/domain/{id}/reglock', params);
  }

  /// PUT /api/domain/{id}/idprotection - Update ID protection
  Future<Map<String, dynamic>> updateIdProtection([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/domain/{id}/idprotection', params);
  }

  /// GET /api/domain/{id}/contact - Get domain contact info
  Future<Map<String, dynamic>> getContact([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/contact', params);
  }

  /// PUT /api/domain/{id}/contact - Update domain contact info
  Future<Map<String, dynamic>> updateContact([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/domain/{id}/contact', params);
  }

  /// GET /api/domain/{id}/email/forwarding - Get email forwarding
  Future<Map<String, dynamic>> getEmailForwarding([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/email/forwarding', params);
  }

  /// PUT /api/domain/{id}/email/forwarding - Update email forwarding
  Future<Map<String, dynamic>> updateEmailForwarding([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/domain/{id}/email/forwarding', params);
  }

  /// GET /api/domain/order - List available TLDs
  Future<Map<String, dynamic>> getAvailableTlds([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/order', params);
  }

  /// POST /api/domain/order - Order new domain
  Future<Map<String, dynamic>> order([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/domain/order', params);
  }

  /// POST /api/domain/{id}/renew - Renew domain
  Future<Map<String, dynamic>> renew([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/domain/{id}/renew', params);
  }

  /// GET /api/domain/order/{id}/form - Get additional data for TLD
  Future<Map<String, dynamic>> getTldForm([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/order/{id}/form', params);
  }

  /// GET /api/domain/{id}/documents - Get domain documents
  Future<Map<String, dynamic>> getDocuments([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/domain/{id}/documents', params);
  }

}
