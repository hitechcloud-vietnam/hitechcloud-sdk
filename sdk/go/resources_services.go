package hitechcloud

import "fmt"

// ServicesResource handles Services endpoints
type ServicesResource struct {
	client *HTTPClient
}

// List - List services
func (r *ServicesResource) List(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/service", params)
}

// Get - Get service
func (r *ServicesResource) Get(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d", serviceId), nil)
}

// GetMethods - Get service methods
func (r *ServicesResource) GetMethods(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/methods", serviceId), nil)
}

// Cancel - Cancel service
func (r *ServicesResource) Cancel(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/cancel", serviceId), data)
}

// GetLabel - Get service label
func (r *ServicesResource) GetLabel(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/label", serviceId), nil)
}

// SetLabel - Set service label
func (r *ServicesResource) SetLabel(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/label", serviceId), data)
}

// Renew - Renew service
func (r *ServicesResource) Renew(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/renew", serviceId), nil)
}

// GetCycle - Get service cycle
func (r *ServicesResource) GetCycle(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/cycle", serviceId), nil)
}

// SetCycle - Set service cycle
func (r *ServicesResource) SetCycle(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/cycle", serviceId), data)
}
