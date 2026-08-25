import 'http_client.dart';

/// Billing & Contracts: balance, invoices, payment methods
class BillingResource {
  final HttpClient httpClient;
  BillingResource(this.httpClient);

  /// GET /api/balance - Get account balance and credit
  Future<Map<String, dynamic>> getBalance([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/balance', params);
  }

  /// GET /api/invoice - List all invoices
  Future<Map<String, dynamic>> listInvoices([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/invoice', params);
  }

  /// GET /api/invoice/{id} - Get invoice details
  Future<Map<String, dynamic>> getInvoice([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/invoice/{id}', params);
  }

  /// POST /api/invoice/{id}/credit - Apply account credit to invoice
  Future<Map<String, dynamic>> applyCredit([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/invoice/{id}/credit', params);
  }

  /// GET /api/payment - List available payment methods
  Future<Map<String, dynamic>> getPaymentMethods([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/payment', params);
  }

  /// GET /api/payment/fees - List payment methods with fees
  Future<Map<String, dynamic>> getPaymentFees([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/payment/fees', params);
  }

}
