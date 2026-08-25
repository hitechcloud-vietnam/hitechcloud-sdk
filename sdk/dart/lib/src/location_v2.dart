import 'http_client.dart';

/// LocationV2: countries, states, cities lookup
class LocationV2Resource {
  final HttpClient httpClient;
  LocationV2Resource(this.httpClient);

  /// GET /api/location_v2/countries - Return list of countries
  Future<Map<String, dynamic>> listCountries([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/location_v2/countries', params);
  }

  /// GET /api/location_v2/{code}/state - Return states for a country code
  Future<Map<String, dynamic>> getStates([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/location_v2/{code}/state', params);
  }

  /// GET /api/location_v2/state/{id}/city - Return cities for a state ID
  Future<Map<String, dynamic>> getCities([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/location_v2/state/{id}/city', params);
  }

  /// GET /api/location_v2/state/city/{name} - Return cities for a state name
  Future<Map<String, dynamic>> getCitiesByStateName([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/location_v2/state/city/{name}', params);
  }

}
