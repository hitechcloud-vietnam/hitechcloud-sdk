<?php

namespace HiTechCloud\SDK\Resources;

class ProxmoxBackup extends BaseResource
{
    /**
     * Get connection info
     */
    public function getConnectionInfo(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pbs');
    }

    /**
     * Get credentials
     */
    public function getCredentials(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pbs/credentials');
    }

    /**
     * Get usage
     */
    public function getUsage(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pbs/usage');
    }

    /**
     * Get metrics
     */
    public function getMetrics(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pbs/metrics');
    }

    /**
     * List snapshots
     */
    public function listSnapshots(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pbs/snapshots');
    }

    /**
     * List groups
     */
    public function listGroups(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pbs/groups');
    }

    /**
     * Change password
     */
    public function changePassword(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/pbs/password', $data);
    }

    /**
     * Rotate token
     */
    public function rotateToken(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/pbs/token');
    }

    /**
     * Revoke token
     */
    public function revokeToken(int $serviceId): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/pbs/token');
    }

}
