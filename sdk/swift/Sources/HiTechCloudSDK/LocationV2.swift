import Foundation

/// LocationV2: countries, states, cities lookup
public class LocationV2Resource {
    private let httpClient: HTTPClient
    public init(httpClient: HTTPClient) { self.httpClient = httpClient }

    /// GET /api/location_v2/countries - Return list of countries
    public func listCountries(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/location_v2/countries", params: params)
    }

    /// GET /api/location_v2/{code}/state - Return states for a country code
    public func getStates(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/location_v2/{code}/state", params: params)
    }

    /// GET /api/location_v2/state/{id}/city - Return cities for a state ID
    public func getCities(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/location_v2/state/{id}/city", params: params)
    }

    /// GET /api/location_v2/state/city/{name} - Return cities for a state name
    public func getCitiesByStateName(params: [String: Any?] = [:]) throws -> [String: Any] {
        return try httpClient.get("/api/location_v2/state/city/{name}", params: params)
    }

}
