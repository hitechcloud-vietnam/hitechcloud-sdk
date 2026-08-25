package hitechcloud

import "fmt"

// ProxmoxBackupResource handles ProxmoxBackup endpoints
type ProxmoxBackupResource struct {
	client *HTTPClient
}

// GetConnectionInfo - Get connection info
func (r *ProxmoxBackupResource) GetConnectionInfo(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pbs", serviceId), nil)
}

// GetCredentials - Get credentials
func (r *ProxmoxBackupResource) GetCredentials(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pbs/credentials", serviceId), nil)
}

// GetUsage - Get usage
func (r *ProxmoxBackupResource) GetUsage(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pbs/usage", serviceId), nil)
}

// GetMetrics - Get metrics
func (r *ProxmoxBackupResource) GetMetrics(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pbs/metrics", serviceId), nil)
}

// ListSnapshots - List snapshots
func (r *ProxmoxBackupResource) ListSnapshots(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pbs/snapshots", serviceId), nil)
}

// ListGroups - List groups
func (r *ProxmoxBackupResource) ListGroups(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/pbs/groups", serviceId), nil)
}

// ChangePassword - Change password
func (r *ProxmoxBackupResource) ChangePassword(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/pbs/password", serviceId), data)
}

// RotateToken - Rotate token
func (r *ProxmoxBackupResource) RotateToken(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/pbs/token", serviceId), nil)
}

// RevokeToken - Revoke token
func (r *ProxmoxBackupResource) RevokeToken(serviceId int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/pbs/token", serviceId))
}
