import 'http_client.dart';

/// AffiliatesAdvanced: advanced affiliate management with client_id
class AffiliatesAdvancedResource {
  final HttpClient httpClient;
  AffiliatesAdvancedResource(this.httpClient);

  /// GET /api/affiliates_adv/{client_id}/info - Get affiliate account info
  Future<Map<String, dynamic>> getInfo([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/info', params);
  }

  /// GET /api/affiliates_adv/{client_id}/stats - Get affiliate stats
  Future<Map<String, dynamic>> getStats([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/stats', params);
  }

  /// GET /api/affiliates_adv/{client_id}/commission-plans - Get commission plans
  Future<Map<String, dynamic>> getCommissionPlans([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/commission-plans', params);
  }

  /// GET /api/affiliates_adv/{client_id}/vouchers - Get vouchers
  Future<Map<String, dynamic>> getVouchers([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/vouchers', params);
  }

  /// GET /api/affiliates_adv/{client_id}/commissions - Get commissions
  Future<Map<String, dynamic>> getCommissions([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/commissions', params);
  }

  /// GET /api/affiliates_adv/{client_id}/referrals - Get referred clients
  Future<Map<String, dynamic>> getReferrals([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/referrals', params);
  }

  /// GET /api/affiliates_adv/{client_id}/payouts - Get payout history
  Future<Map<String, dynamic>> getPayouts([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/payouts', params);
  }

  /// GET /api/affiliates_adv/{client_id}/campaigns - Get campaigns
  Future<Map<String, dynamic>> getCampaigns([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/campaigns', params);
  }

  /// GET /api/affiliates_adv/{client_id}/audit - Get activity log
  Future<Map<String, dynamic>> getAuditLog([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates_adv/{client_id}/audit', params);
  }

  /// POST /api/affiliates_adv/{client_id}/activate - Activate affiliate account
  Future<Map<String, dynamic>> activate([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/affiliates_adv/{client_id}/activate', params);
  }

  /// POST /api/affiliates_adv/{client_id}/commission-plan/{commission_id} - Set commission plan
  Future<Map<String, dynamic>> setCommissionPlan([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/affiliates_adv/{client_id}/commission-plan/{commission_id}', params);
  }

  /// POST /api/affiliates_adv/{client_id}/vouchers/{plan_id} - Create voucher
  Future<Map<String, dynamic>> createVoucher([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/affiliates_adv/{client_id}/vouchers/{plan_id}', params);
  }

  /// DELETE /api/affiliates_adv/{client_id}/vouchers/{voucher_id} - Delete voucher
  Future<Map<String, dynamic>> deleteVoucher([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/affiliates_adv/{client_id}/vouchers/{voucher_id}', params);
  }

  /// POST /api/affiliates_adv/{client_id}/landing-page - Set landing page
  Future<Map<String, dynamic>> setLandingPage([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/affiliates_adv/{client_id}/landing-page', params);
  }

}
