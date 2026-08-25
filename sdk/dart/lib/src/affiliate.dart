import 'http_client.dart';

/// Affiliate: affiliate program management
class AffiliateResource {
  final HttpClient httpClient;
  AffiliateResource(this.httpClient);

  /// GET /api/affiliates/summary - Get Affiliate summary
  Future<Map<String, dynamic>> getSummary([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates/summary', params);
  }

  /// GET /api/affiliates/campaigns - Get Affiliate campaigns
  Future<Map<String, dynamic>> listCampaigns([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates/campaigns', params);
  }

  /// GET /api/affiliates/commissions - Get Affiliate commissions
  Future<Map<String, dynamic>> listCommissions([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates/commissions', params);
  }

  /// GET /api/affiliates/payouts - Get Affiliate payouts
  Future<Map<String, dynamic>> listPayouts([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates/payouts', params);
  }

  /// GET /api/affiliates/vouchers - Get Affiliate vouchers
  Future<Map<String, dynamic>> listVouchers([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates/vouchers', params);
  }

  /// GET /api/affiliates/commissionplans - Get Affiliate commission plans
  Future<Map<String, dynamic>> listCommissionPlans([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/affiliates/commissionplans', params);
  }

}
