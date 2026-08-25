package hitechcloud

import "fmt"

// ProxmoxResource handles Proxmox endpoints
type ProxmoxResource struct {
	client *HTTPClient
}

// GetStatus - Get status
func (r *ProxmoxResource) GetStatus(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpve/status", serviceId), nil)
}

// PowerAction - Power action
func (r *ProxmoxResource) PowerAction(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/htcpve/power", serviceId), data)
}

// ListVms - List VMs
func (r *ProxmoxResource) ListVms(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpve/vms", serviceId), nil)
}

// ListIps - List IPs
func (r *ProxmoxResource) ListIps(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpve/ips", serviceId), nil)
}

// SetRdns - Set rDNS
func (r *ProxmoxResource) SetRdns(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/htcpve/rdns", serviceId), data)
}

// ListBackups - List backups
func (r *ProxmoxResource) ListBackups(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpve/backups", serviceId), nil)
}

// CreateBackup - Create backup
func (r *ProxmoxResource) CreateBackup(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/htcpve/backups", serviceId), data)
}

// ListSnapshots - List snapshots
func (r *ProxmoxResource) ListSnapshots(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpve/snapshots", serviceId), nil)
}

// CreateSnapshot - Create snapshot
func (r *ProxmoxResource) CreateSnapshot(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/htcpve/snapshots", serviceId), data)
}

// GetBandwidthUsage - Get bandwidth usage
func (r *ProxmoxResource) GetBandwidthUsage(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/htcpve/usage", serviceId), nil)
}
