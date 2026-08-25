package hitechcloud

import "fmt"

// CloudServiceResource handles CloudService endpoints
type CloudServiceResource struct {
	client *HTTPClient
}

// Shutdown - Shutdown VM
func (r *CloudServiceResource) Shutdown(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/shutdown", serviceId, vmId), nil)
}

// Reset - Reset VM
func (r *CloudServiceResource) Reset(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/reset", serviceId, vmId), nil)
}

// SetHostname - Set hostname
func (r *CloudServiceResource) SetHostname(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/hostname", serviceId, vmId), data)
}

// GetIpPool - Get IP pool
func (r *CloudServiceResource) GetIpPool(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/ippool", serviceId, vmId), nil)
}

// AssignIp - Assign IP
func (r *CloudServiceResource) AssignIp(serviceId int, vmId int, pool string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/ippool/%s", serviceId, vmId, pool), nil)
}

// ListNetworks - List networks
func (r *CloudServiceResource) ListNetworks(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/networks", serviceId), nil)
}

// CreateInterface - Create interface
func (r *CloudServiceResource) CreateInterface(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/interfaces", serviceId, vmId), data)
}

// GetInterface - Get interface
func (r *CloudServiceResource) GetInterface(serviceId int, vmId int, iface string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/interfaces/%s", serviceId, vmId, iface), nil)
}

// UpdateInterface - Update interface
func (r *CloudServiceResource) UpdateInterface(serviceId int, vmId int, iface string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/vms/%d/interfaces/%s", serviceId, vmId, iface), data)
}

// DeleteInterface - Delete interface
func (r *CloudServiceResource) DeleteInterface(serviceId int, vmId int, iface string )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/vms/%d/interfaces/%s", serviceId, vmId, iface))
}
