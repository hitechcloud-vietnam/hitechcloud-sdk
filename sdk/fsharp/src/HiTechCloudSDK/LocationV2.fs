namespace HiTechCloud.SDK

/// LocationV2: countries, states, cities lookup
type LocationV2Resource(httpClient: HttpClient) =

    /// GET /api/location_v2/countries - Return list of countries
    member this.ListCountries() =
        async {
            return! httpClient.getAsync("/api/location_v2/countries")
        }

    /// GET /api/location_v2/{code}/state - Return states for a country code
    member this.GetStates() =
        async {
            return! httpClient.getAsync("/api/location_v2/{code}/state")
        }

    /// GET /api/location_v2/state/{id}/city - Return cities for a state ID
    member this.GetCities() =
        async {
            return! httpClient.getAsync("/api/location_v2/state/{id}/city")
        }

    /// GET /api/location_v2/state/city/{name} - Return cities for a state name
    member this.GetCitiesByStateName() =
        async {
            return! httpClient.getAsync("/api/location_v2/state/city/{name}")
        }

