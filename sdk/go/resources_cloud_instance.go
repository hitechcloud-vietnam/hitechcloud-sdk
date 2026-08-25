package hitechcloud

import "fmt"

// CloudInstanceResource handles CloudInstance endpoints
type CloudInstanceResource struct {
	client *HTTPClient
}

// List - List VMs
func (r *CloudInstanceResource) List(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms", serviceId), nil)
}

// Create - Create VM
func (r *CloudInstanceResource) Create(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms", serviceId), data)
}

// Get - Get VM
func (r *CloudInstanceResource) Get(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d", serviceId, vmId), nil)
}

// Delete - Delete VM
func (r *CloudInstanceResource) Delete(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/vms/%d", serviceId, vmId))
}

// Update - Update VM
func (r *CloudInstanceResource) Update(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/vms/%d", serviceId, vmId), data)
}

// Stop - Stop VM
func (r *CloudInstanceResource) Stop(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/stop", serviceId, vmId), nil)
}

// Start - Start VM
func (r *CloudInstanceResource) Start(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/start", serviceId, vmId), nil)
}

// Reboot - Reboot VM
func (r *CloudInstanceResource) Reboot(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/reboot", serviceId, vmId), nil)
}

// ResetPassword - Reset password
func (r *CloudInstanceResource) ResetPassword(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/resetpwd", serviceId, vmId), data)
}

// Rebuild - Rebuild VM
func (r *CloudInstanceResource) Rebuild(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/rebuild", serviceId, vmId), data)
}

// ListIps - List VM IPs
func (r *CloudInstanceResource) ListIps(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/ips", serviceId, vmId), nil)
}

// AddIp - Add IP
func (r *CloudInstanceResource) AddIp(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/ips", serviceId, vmId), data)
}

// ListInterfaces - List interfaces
func (r *CloudInstanceResource) ListInterfaces(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/interfaces", serviceId, vmId), nil)
}

// GetCpuUsage - Get CPU usage
func (r *CloudInstanceResource) GetCpuUsage(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/usage/cpu", serviceId, vmId), nil)
}

// GetNetUsage - Get network usage
func (r *CloudInstanceResource) GetNetUsage(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/usage/net", serviceId, vmId), nil)
}

// GetDiskUsage - Get disk usage
func (r *CloudInstanceResource) GetDiskUsage(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/usage/disk", serviceId, vmId), nil)
}

// ListStorage - List storage
func (r *CloudInstanceResource) ListStorage(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/storage", serviceId, vmId), nil)
}

// ResizeStorage - Resize storage
func (r *CloudInstanceResource) ResizeStorage(serviceId int, vmId int, diskId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/vms/%d/storage/%d", serviceId, vmId, diskId), data)
}

// ListImages - List images
func (r *CloudInstanceResource) ListImages(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/images", serviceId), nil)
}

// CreateImage - Create image
func (r *CloudInstanceResource) CreateImage(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/images", serviceId), data)
}

// GetInterfaceIps - Get interface IPs
func (r *CloudInstanceResource) GetInterfaceIps(serviceId int, vmId int, iface string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/interfaces/%s/ips", serviceId, vmId, iface), nil)
}

// DeleteIp - Delete IP
func (r *CloudInstanceResource) DeleteIp(serviceId int, vmId int, ipId int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/vms/%d/ips/%d", serviceId, vmId, ipId))
}

// GetRdns - Get rDNS
func (r *CloudInstanceResource) GetRdns(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vms/%d/rdns", serviceId, vmId), nil)
}

// SetRdns - Set rDNS
func (r *CloudInstanceResource) SetRdns(serviceId int, vmId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/rdns", serviceId, vmId), data)
}

// RebuildNetwork - Rebuild network
func (r *CloudInstanceResource) RebuildNetwork(serviceId int, vmId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/vms/%d/rebuild_network", serviceId, vmId), nil)
}
