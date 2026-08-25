package hitechcloud

import "fmt"

// AiFactoryResource handles AiFactory endpoints
type AiFactoryResource struct {
	client *HTTPClient
}

// ListTemplates - List templates
func (r *AiFactoryResource) ListTemplates(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/templates", serviceId), nil)
}

// SaveTemplate - Save template
func (r *AiFactoryResource) SaveTemplate(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/templates", serviceId), data)
}

// GetProvisioningMode - Get provisioning mode
func (r *AiFactoryResource) GetProvisioningMode(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/hitechcloud/mode", serviceId), nil)
}

// GetJsonExamples - Get JSON examples
func (r *AiFactoryResource) GetJsonExamples(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/hitechcloud/examples", serviceId), nil)
}

// GetApiSchema - Get API schema
func (r *AiFactoryResource) GetApiSchema(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/hitechcloud/schema", serviceId), nil)
}

// ListFeaturedTemplates - List featured templates
func (r *AiFactoryResource) ListFeaturedTemplates(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/templates/featured", serviceId), nil)
}

// GetTemplate - Get template
func (r *AiFactoryResource) GetTemplate(serviceId int, templateId string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/templates/%s", serviceId, templateId), nil)
}

// UpdateTemplate - Update template
func (r *AiFactoryResource) UpdateTemplate(serviceId int, templateId string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/templates/%s/update", serviceId, templateId), data)
}

// DeleteTemplate - Delete template
func (r *AiFactoryResource) DeleteTemplate(serviceId int, templateId string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/templates/%s/delete", serviceId, templateId), nil)
}

// ListInstances - List instances
func (r *AiFactoryResource) ListInstances(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/instances", serviceId), nil)
}

// CreateInstance - Create instance
func (r *AiFactoryResource) CreateInstance(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/instances", serviceId), data)
}

// ListInstanceTypes - List instance types
func (r *AiFactoryResource) ListInstanceTypes(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/instances/types", serviceId), nil)
}

// GetInstance - Get instance
func (r *AiFactoryResource) GetInstance(serviceId int, instanceId string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/instances/%s", serviceId, instanceId), nil)
}

// UpdateInstance - Update instance
func (r *AiFactoryResource) UpdateInstance(serviceId int, instanceId string, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/instances/%s/update", serviceId, instanceId), data)
}

// RestartInstance - Restart instance
func (r *AiFactoryResource) RestartInstance(serviceId int, instanceId string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/instances/%s/restart", serviceId, instanceId), nil)
}

// DeleteInstance - Delete instance
func (r *AiFactoryResource) DeleteInstance(serviceId int, instanceId string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/instances/%s/delete", serviceId, instanceId), nil)
}

// GetServiceInstance - Get service instance
func (r *AiFactoryResource) GetServiceInstance(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/instance", serviceId), nil)
}

// SyncServiceInstance - Sync service instance
func (r *AiFactoryResource) SyncServiceInstance(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/instance/sync", serviceId), nil)
}

// RestartServiceInstance - Restart service instance
func (r *AiFactoryResource) RestartServiceInstance(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/instance/restart", serviceId), nil)
}

// UpdateServiceInstance - Update service instance
func (r *AiFactoryResource) UpdateServiceInstance(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/instance/update", serviceId), data)
}

// ListSshKeys - List SSH keys
func (r *AiFactoryResource) ListSshKeys(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/sshkeys", serviceId), nil)
}

// AddSshKey - Add SSH key
func (r *AiFactoryResource) AddSshKey(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/sshkeys", serviceId), data)
}

// GetSshKey - Get SSH key
func (r *AiFactoryResource) GetSshKey(serviceId int, keyId string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/sshkeys/%s", serviceId, keyId), nil)
}

// DeleteSshKey - Delete SSH key
func (r *AiFactoryResource) DeleteSshKey(serviceId int, keyId string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/sshkeys/%s/delete", serviceId, keyId), nil)
}

// SetDefaultSshKey - Set default SSH key
func (r *AiFactoryResource) SetDefaultSshKey(serviceId int, keyId string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/sshkeys/%s/setdefault", serviceId, keyId), nil)
}

// ListVolumes - List volumes
func (r *AiFactoryResource) ListVolumes(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/volumes", serviceId), nil)
}

// CreateVolume - Create volume
func (r *AiFactoryResource) CreateVolume(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/volumes", serviceId), data)
}

// ListVolumeTypes - List volume types
func (r *AiFactoryResource) ListVolumeTypes(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/volumes/types", serviceId), nil)
}

// GetVolume - Get volume
func (r *AiFactoryResource) GetVolume(serviceId int, volumeId string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/volumes/%s", serviceId, volumeId), nil)
}

// DeleteVolume - Delete volume
func (r *AiFactoryResource) DeleteVolume(serviceId int, volumeId string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/volumes/%s/delete", serviceId, volumeId), nil)
}

// ListClusters - List clusters
func (r *AiFactoryResource) ListClusters(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/clusters", serviceId), nil)
}

// CreateCluster - Create cluster
func (r *AiFactoryResource) CreateCluster(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/clusters", serviceId), data)
}

// ListClusterTypes - List cluster types
func (r *AiFactoryResource) ListClusterTypes(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/clusters/types", serviceId), nil)
}

// GetServiceCluster - Get service cluster
func (r *AiFactoryResource) GetServiceCluster(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/cluster", serviceId), nil)
}

// GetCluster - Get cluster
func (r *AiFactoryResource) GetCluster(serviceId int, clusterId string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/clusters/%s", serviceId, clusterId), nil)
}

// DeleteCluster - Delete cluster
func (r *AiFactoryResource) DeleteCluster(serviceId int, clusterId string )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/clusters/%s/delete", serviceId, clusterId), nil)
}
