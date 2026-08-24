<?php

namespace HiTechCloud\SDK\Resources;

class CloudVm extends BaseResource
{
    /**
     * Get upgrade options
     */
    public function getUpgrade(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/upgrade');
    }

    /**
     * Upgrade VM
     */
    public function upgrade(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/upgrade', $data);
    }

    /**
     * Get resources
     */
    public function getResources(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/resources');
    }

    /**
     * Get VM templates
     */
    public function getTemplates(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/templates/' . $vmId);
    }

    /**
     * Get memory usage
     */
    public function getMemoryUsage(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/usage/memory');
    }

    /**
     * List VM images
     */
    public function listVmImages(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/images');
    }

    /**
     * Create VM image
     */
    public function createVmImage(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/images', $data);
    }

    /**
     * Set boot order
     */
    public function setBootOrder(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/boot', $data);
    }

    /**
     * Toggle TUN/TAP
     */
    public function toggleTunTap(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/tuntap', $data);
    }

}
