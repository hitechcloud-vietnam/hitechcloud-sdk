<?php

namespace HiTechCloud\SDK\Resources;

class AiFactory extends BaseResource
{
    /**
     * List templates
     */
    public function listTemplates(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/templates');
    }

    /**
     * Save template
     */
    public function saveTemplate(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/templates', $data);
    }

    /**
     * Get provisioning mode
     */
    public function getProvisioningMode(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/hitechcloud/mode');
    }

    /**
     * Get JSON examples
     */
    public function getJsonExamples(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/hitechcloud/examples');
    }

    /**
     * Get API schema
     */
    public function getApiSchema(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/hitechcloud/schema');
    }

    /**
     * List featured templates
     */
    public function listFeaturedTemplates(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/templates/featured');
    }

    /**
     * Get template
     */
    public function getTemplate(int $serviceId, string $templateId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/templates/' . $templateId);
    }

    /**
     * Update template
     */
    public function updateTemplate(int $serviceId, string $templateId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/templates/' . $templateId . '/update', $data);
    }

    /**
     * Delete template
     */
    public function deleteTemplate(int $serviceId, string $templateId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/templates/' . $templateId . '/delete');
    }

    /**
     * List instances
     */
    public function listInstances(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/instances');
    }

    /**
     * Create instance
     */
    public function createInstance(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/instances', $data);
    }

    /**
     * List instance types
     */
    public function listInstanceTypes(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/instances/types');
    }

    /**
     * Get instance
     */
    public function getInstance(int $serviceId, string $instanceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/instances/' . $instanceId);
    }

    /**
     * Update instance
     */
    public function updateInstance(int $serviceId, string $instanceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/instances/' . $instanceId . '/update', $data);
    }

    /**
     * Restart instance
     */
    public function restartInstance(int $serviceId, string $instanceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/instances/' . $instanceId . '/restart');
    }

    /**
     * Delete instance
     */
    public function deleteInstance(int $serviceId, string $instanceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/instances/' . $instanceId . '/delete');
    }

    /**
     * Get service instance
     */
    public function getServiceInstance(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/instance');
    }

    /**
     * Sync service instance
     */
    public function syncServiceInstance(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/instance/sync');
    }

    /**
     * Restart service instance
     */
    public function restartServiceInstance(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/instance/restart');
    }

    /**
     * Update service instance
     */
    public function updateServiceInstance(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/instance/update', $data);
    }

    /**
     * List SSH keys
     */
    public function listSshKeys(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/sshkeys');
    }

    /**
     * Add SSH key
     */
    public function addSshKey(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/sshkeys', $data);
    }

    /**
     * Get SSH key
     */
    public function getSshKey(int $serviceId, string $keyId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/sshkeys/' . $keyId);
    }

    /**
     * Delete SSH key
     */
    public function deleteSshKey(int $serviceId, string $keyId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/sshkeys/' . $keyId . '/delete');
    }

    /**
     * Set default SSH key
     */
    public function setDefaultSshKey(int $serviceId, string $keyId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/sshkeys/' . $keyId . '/setdefault');
    }

    /**
     * List volumes
     */
    public function listVolumes(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/volumes');
    }

    /**
     * Create volume
     */
    public function createVolume(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/volumes', $data);
    }

    /**
     * List volume types
     */
    public function listVolumeTypes(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/volumes/types');
    }

    /**
     * Get volume
     */
    public function getVolume(int $serviceId, string $volumeId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/volumes/' . $volumeId);
    }

    /**
     * Delete volume
     */
    public function deleteVolume(int $serviceId, string $volumeId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/volumes/' . $volumeId . '/delete');
    }

    /**
     * List clusters
     */
    public function listClusters(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/clusters');
    }

    /**
     * Create cluster
     */
    public function createCluster(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/clusters', $data);
    }

    /**
     * List cluster types
     */
    public function listClusterTypes(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/clusters/types');
    }

    /**
     * Get service cluster
     */
    public function getServiceCluster(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/cluster');
    }

    /**
     * Get cluster
     */
    public function getCluster(int $serviceId, string $clusterId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/clusters/' . $clusterId);
    }

    /**
     * Delete cluster
     */
    public function deleteCluster(int $serviceId, string $clusterId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/clusters/' . $clusterId . '/delete');
    }

}
