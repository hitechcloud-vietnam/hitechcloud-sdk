package hitechcloud

import "fmt"

// LocationV2Resource handles LocationV2 endpoints
type LocationV2Resource struct {
	client *HTTPClient
}

// ListCountries - List countries
func (r *LocationV2Resource) ListCountries()(map[string]interface{}, error) {
	return r.client.Get("/api/location_v2/countries", nil)
}

// ListStates - List states
func (r *LocationV2Resource) ListStates(code string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/location_v2/%s/state", code), nil)
}

// ListCities - List cities
func (r *LocationV2Resource) ListCities(stateId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/location_v2/state/%d/city", stateId), nil)
}

// GetCity - Get city
func (r *LocationV2Resource) GetCity(name string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/location_v2/state/city/%s", name), nil)
}
