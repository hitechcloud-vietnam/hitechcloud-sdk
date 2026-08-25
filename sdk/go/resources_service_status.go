package hitechcloud

import "fmt"

// ServiceStatusResource handles ServiceStatus endpoints
type ServiceStatusResource struct {
	client *HTTPClient
}

// List - List statuses
func (r *ServiceStatusResource) List(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/statuses", params)
}

// Update - Update status
func (r *ServiceStatusResource) Update(statusId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/statuses/%d", statusId), data)
}
