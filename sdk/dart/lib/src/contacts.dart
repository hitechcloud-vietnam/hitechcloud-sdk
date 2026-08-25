import 'http_client.dart';

/// Contacts: manage account contacts
class ContactsResource {
  final HttpClient httpClient;
  ContactsResource(this.httpClient);

  /// GET /api/contact - Return a list of contacts on this account
  Future<Map<String, dynamic>> list([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/contact', params);
  }

  /// POST /api/contact - Create new contact account
  Future<Map<String, dynamic>> create([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/contact', params);
  }

  /// GET /api/contact/privileges - List possible contact privileges
  Future<Map<String, dynamic>> getPrivileges([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/contact/privileges', params);
  }

  /// GET /api/contact/{id} - Get contact details
  Future<Map<String, dynamic>> get([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/contact/{id}', params);
  }

  /// PUT /api/contact/{id} - Update contact details
  Future<Map<String, dynamic>> update([Map<String, dynamic>? params]) async {
    return httpClient.put('/api/contact/{id}', params);
  }

}
