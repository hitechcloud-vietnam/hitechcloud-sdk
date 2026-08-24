<?php

namespace HiTechCloud\SDK\Resources;

class CloudService extends BaseResource
{
    /**
     * Shutdown VM
     */
    public function shutdown(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/shutdown');
    }

    /**
     * Reset VM
     */
    public function reset(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/reset');
    }

    /**
     * Set hostname
     */
    public function setHostname(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/hostname', $data);
    }

    /**
     * Get IP pool
     */
    public function getIpPool(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/ippool');
    }

    /**
     * Assign IP
     */
    public function assignIp(int $serviceId, int $vmId, string $pool): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/ippool/' . $pool);
    }

    /**
     * List networks
     */
    public function listNetworks(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/networks');
    }

    /**
     * Create interface
     */
    public function createInterface(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/interfaces', $data);
    }

    /**
     * Get interface
     */
    public function getInterface(int $serviceId, int $vmId, string $iface): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/interfaces/' . $iface);
    }

    /**
     * Update interface
     */
    public function updateInterface(int $serviceId, int $vmId, string $iface, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/vms/' . $vmId . '/interfaces/' . $iface, $data);
    }

    /**
     * Delete interface
     */
    public function deleteInterface(int $serviceId, int $vmId, string $iface): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/vms/' . $vmId . '/interfaces/' . $iface);
    }

}
