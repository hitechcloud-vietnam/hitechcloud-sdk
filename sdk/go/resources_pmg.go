package hitechcloud

import "fmt"

// PmgResource handles Pmg endpoints
type PmgResource struct {
	client *HTTPClient
}

// GetConfig - Get config
func (r *PmgResource) GetConfig(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpmg/config", serviceId), nil)
}

// AddDomain - Add domain
func (r *PmgResource) AddDomain(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/htcpmg/domains", serviceId), data)
}

// SetTransport - Set transport
func (r *PmgResource) SetTransport(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/htcpmg/transport", serviceId), data)
}

// GetStats - Get stats
func (r *PmgResource) GetStats(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpmg/stats", serviceId), nil)
}
