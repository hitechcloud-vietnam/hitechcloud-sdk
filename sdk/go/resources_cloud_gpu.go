package hitechcloud

import "fmt"

// CloudGpuResource handles CloudGpu endpoints
type CloudGpuResource struct {
	client *HTTPClient
}

// Reboot - Reboot VM
func (r *CloudGpuResource) Reboot(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/vms/reboot", serviceId), data)
}

// Stop - Stop VM
func (r *CloudGpuResource) Stop(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/vms/stop", serviceId), data)
}

// Start - Start VM
func (r *CloudGpuResource) Start(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/vms/start", serviceId), data)
}

// GetFirewall - Get firewall rules
func (r *CloudGpuResource) GetFirewall(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/firewall", serviceId), nil)
}

// CreateFirewallRule - Create firewall rule
func (r *CloudGpuResource) CreateFirewallRule(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/firewall", serviceId), data)
}

// DeleteFirewallRule - Delete firewall rule
func (r *CloudGpuResource) DeleteFirewallRule(serviceId int, position int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/vms/firewall/%d", serviceId, position))
}
