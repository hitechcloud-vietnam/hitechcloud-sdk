package hitechcloud

import "fmt"

// BareMetalResource handles BareMetal endpoints
type BareMetalResource struct {
	client *HTTPClient
}

// GetReinstallTemplates - Get reinstall templates
func (r *BareMetalResource) GetReinstallTemplates(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/reinstall/templates", serviceId), nil)
}

// CancelDiag - Cancel diagnostics
func (r *BareMetalResource) CancelDiag(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/diag/cancel", serviceId), nil)
}

// GetDiagTemplates - Get diag templates
func (r *BareMetalResource) GetDiagTemplates(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/diag/templates", serviceId), nil)
}

// GetDiag - Get diagnostics
func (r *BareMetalResource) GetDiag(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/diag", serviceId), nil)
}

// RunDiag - Run diagnostics
func (r *BareMetalResource) RunDiag(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/diag", serviceId), data)
}

// GetRescueTemplates - Get rescue templates
func (r *BareMetalResource) GetRescueTemplates(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/rescue/templates", serviceId), nil)
}

// GetRescue - Get rescue mode
func (r *BareMetalResource) GetRescue(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/rescue", serviceId), nil)
}

// StartRescue - Start rescue mode
func (r *BareMetalResource) StartRescue(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/rescue", serviceId), data)
}

// CancelRescue - Cancel rescue mode
func (r *BareMetalResource) CancelRescue(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/rescue/cancel", serviceId), nil)
}

// GetInfo - Get server info
func (r *BareMetalResource) GetInfo(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/info", serviceId), nil)
}

// SetHostname - Set hostname
func (r *BareMetalResource) SetHostname(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/hostname", serviceId), data)
}

// ListIps - List IPs
func (r *BareMetalResource) ListIps(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/ips", serviceId), nil)
}

// AddIp - Add IP
func (r *BareMetalResource) AddIp(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/ips", serviceId), data)
}

// ListVlans - List VLANs
func (r *BareMetalResource) ListVlans(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/vlans", serviceId), nil)
}

// GetIp - Get IP details
func (r *BareMetalResource) GetIp(serviceId int, ip string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/ips/%s", serviceId, ip), nil)
}

// UpdateIp - Update IP
func (r *BareMetalResource) UpdateIp(serviceId int, ip string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/service/%d/ips/%s", serviceId, ip), data)
}

// GetReinstall - Get reinstall info
func (r *BareMetalResource) GetReinstall(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/reinstall", serviceId), nil)
}

// Reinstall - Reinstall server
func (r *BareMetalResource) Reinstall(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/reinstall", serviceId), data)
}

// GetStatus - Get server status
func (r *BareMetalResource) GetStatus(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/status", serviceId), nil)
}

// PowerAction - Power action
func (r *BareMetalResource) PowerAction(serviceId int, action string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/power/%s", serviceId, action), nil)
}

// GetServerStock - Get server stock
func (r *BareMetalResource) GetServerStock(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/serverstock", params)
}
