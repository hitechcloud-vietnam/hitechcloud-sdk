package hitechcloud

import "fmt"

// NetworkServicesResource handles NetworkServices endpoints
type NetworkServicesResource struct {
	client *HTTPClient
}

// GetIps - Get IPs
func (r *NetworkServicesResource) GetIps(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/ip", serviceId), nil)
}

// GetRdns - Get rDNS
func (r *NetworkServicesResource) GetRdns(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/rdns", serviceId), nil)
}

// SetRdns - Set rDNS
func (r *NetworkServicesResource) SetRdns(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/rdns", serviceId), data)
}
