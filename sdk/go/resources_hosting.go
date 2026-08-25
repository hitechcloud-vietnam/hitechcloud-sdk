package hitechcloud

import "fmt"

// HostingResource handles Hosting endpoints
type HostingResource struct {
	client *HTTPClient
}

// GetReinstall - Get reinstall info
func (r *HostingResource) GetReinstall(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/reinstall", serviceId), nil)
}

// Reinstall - Reinstall
func (r *HostingResource) Reinstall(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/reinstall", serviceId), data)
}

// GetStatus - Get status
func (r *HostingResource) GetStatus(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/status", serviceId), nil)
}

// GetBandwidthGraphs - Get bandwidth graphs
func (r *HostingResource) GetBandwidthGraphs(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/bandwidth-graphs", serviceId), nil)
}

// GetBandwidth - Get bandwidth
func (r *HostingResource) GetBandwidth(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/bandwidth", serviceId), nil)
}

// ResetPassword - Reset password
func (r *HostingResource) ResetPassword(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/reset", serviceId), nil)
}
