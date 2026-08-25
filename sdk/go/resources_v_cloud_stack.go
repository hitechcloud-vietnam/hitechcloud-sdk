package hitechcloud

import "fmt"

// VCloudStackResource handles VCloudStack endpoints
type VCloudStackResource struct {
	client *HTTPClient
}

// Rescue - Rescue VM
func (r *VCloudStackResource) Rescue(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/rescue", serviceId, vmId), nil)
}

// Unrescue - Unrescue VM
func (r *VCloudStackResource) Unrescue(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/unrescue", serviceId, vmId), nil)
}

// GetConsole - Get console URL
func (r *VCloudStackResource) GetConsole(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/console", serviceId, vmId), nil)
}

// GetUsage - Get VM usage
func (r *VCloudStackResource) GetUsage(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/usage", serviceId, vmId), nil)
}
