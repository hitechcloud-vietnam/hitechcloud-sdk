package vn.hitechcloud.sdk

/** LocationV2: countries, states, cities lookup */
class LocationV2Resource(private val httpClient: HttpClient) {
    /** GET /api/location_v2/countries - Return list of countries */
    fun listCountries(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/location_v2/countries", params)
    }

    /** GET /api/location_v2/{code}/state - Return states for a country code */
    fun getStates(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/location_v2/{code}/state", params)
    }

    /** GET /api/location_v2/state/{id}/city - Return cities for a state ID */
    fun getCities(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/location_v2/state/{id}/city", params)
    }

    /** GET /api/location_v2/state/city/{name} - Return cities for a state name */
    fun getCitiesByStateName(params: Map<String, Any?> = emptyMap()): Map<String, Any> {
        return httpClient.get("/api/location_v2/state/city/{name}", params)
    }

}
