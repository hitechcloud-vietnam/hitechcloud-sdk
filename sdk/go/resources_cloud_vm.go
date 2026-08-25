package hitechcloud

import "fmt"

// CloudVmResource handles CloudVm endpoints
type CloudVmResource struct {
	client *HTTPClient
}

// GetUpgrade - Get upgrade options
func (r *CloudVmResource) GetUpgrade(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/upgrade", serviceId), nil)
}

// Upgrade - Upgrade VM
func (r *CloudVmResource) Upgrade(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/upgrade", serviceId), data)
}

// GetResources - Get resources
func (r *CloudVmResource) GetResources(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/resources", serviceId), nil)
}

// GetTemplates - Get VM templates
func (r *CloudVmResource) GetTemplates(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/templates/%d", serviceId, vmId), nil)
}

// GetMemoryUsage - Get memory usage
func (r *CloudVmResource) GetMemoryUsage(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/usage/memory", serviceId, vmId), nil)
}

// ListVmImages - List VM images
func (r *CloudVmResource) ListVmImages(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/images", serviceId, vmId), nil)
}

// CreateVmImage - Create VM image
func (r *CloudVmResource) CreateVmImage(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/images", serviceId, vmId), data)
}

// SetBootOrder - Set boot order
func (r *CloudVmResource) SetBootOrder(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/boot", serviceId, vmId), data)
}

// ToggleTunTap - Toggle TUN/TAP
func (r *CloudVmResource) ToggleTunTap(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/tuntap", serviceId, vmId), data)
}
