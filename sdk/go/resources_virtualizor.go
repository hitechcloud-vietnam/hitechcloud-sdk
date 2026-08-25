package hitechcloud

import "fmt"

// VirtualizorResource handles Virtualizor endpoints
type VirtualizorResource struct {
	client *HTTPClient
}

// Suspend - Suspend VM
func (r *VirtualizorResource) Suspend(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/suspend", serviceId, vmId), nil)
}

// Unsuspend - Unsuspend VM
func (r *VirtualizorResource) Unsuspend(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/unsuspend", serviceId, vmId), nil)
}

// GetRebuildInfo - Get rebuild info
func (r *VirtualizorResource) GetRebuildInfo(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/rebuild", serviceId, vmId), nil)
}

// AddSshKey - Add SSH key
func (r *VirtualizorResource) AddSshKey(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/addsshkey", serviceId, vmId), data)
}
