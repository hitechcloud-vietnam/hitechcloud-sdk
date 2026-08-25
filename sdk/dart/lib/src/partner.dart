import 'http_client.dart';

/// Partner: partner program, tiers, pricing, customers, earnings, wallet, payouts, leads, referral, rates
class PartnerResource {
  final HttpClient httpClient;
  PartnerResource(this.httpClient);

  /// GET /api/partner - Get partner info
  Future<Map<String, dynamic>> getPartnerInfo([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner', params);
  }

  /// POST /api/partner/apply - Apply to partner program
  Future<Map<String, dynamic>> apply([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/partner/apply', params);
  }

  /// GET /api/partner/tiers - List partner tiers
  Future<Map<String, dynamic>> listTiers([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/tiers', params);
  }

  /// GET /api/partner/pricing - Get partner pricing
  Future<Map<String, dynamic>> getPricing([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/pricing', params);
  }

  /// GET /api/partner/customers - List customers
  Future<Map<String, dynamic>> listCustomers([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/customers', params);
  }

  /// GET /api/partner/earnings - Get earnings
  Future<Map<String, dynamic>> getEarnings([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/earnings', params);
  }

  /// GET /api/partner/wallet - Get wallet balance
  Future<Map<String, dynamic>> getWallet([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/wallet', params);
  }

  /// GET /api/partner/payouts - List payouts
  Future<Map<String, dynamic>> listPayouts([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/payouts', params);
  }

  /// POST /api/partner/payouts - Request payout
  Future<Map<String, dynamic>> requestPayout([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/partner/payouts', params);
  }

  /// GET /api/partner/leads - List leads
  Future<Map<String, dynamic>> listLeads([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/leads', params);
  }

  /// POST /api/partner/leads - Create lead
  Future<Map<String, dynamic>> createLead([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/partner/leads', params);
  }

  /// GET /api/partner/referral - Get referral info
  Future<Map<String, dynamic>> getReferral([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/referral', params);
  }

  /// GET /api/partner/rates - Get exchange rates
  Future<Map<String, dynamic>> getRates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/partner/rates', params);
  }

}
