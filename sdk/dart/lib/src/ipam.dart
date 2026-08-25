import 'http_client.dart';

/// HiTechCloudIPAM: IP addresses, subnets, reverse DNS
class IpamResource {
  final HttpClient httpClient;
  IpamResource(this.httpClient);

  /// GET /api/service/{id}/htcipam/ips - List IP addresses
  Future<Map<String, dynamic>> listIps([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcipam/ips', params);
  }

  /// GET /api/service/{id}/htcipam/subnets - List subnets
  Future<Map<String, dynamic>> listSubnets([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcipam/subnets', params);
  }

  /// GET /api/service/{id}/htcipam/rdns - List reverse DNS records
  Future<Map<String, dynamic>> listRdns([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/htcipam/rdns', params);
  }

  /// POST /api/service/{id}/htcipam/rdns - Set reverse DNS
  Future<Map<String, dynamic>> setRdns([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/htcipam/rdns', params);
  }

}
