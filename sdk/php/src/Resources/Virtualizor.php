<?php

namespace HiTechCloud\SDK\Resources;

class Virtualizor extends BaseResource
{
    /**
     * Suspend VM
     */
    public function suspend(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/suspend');
    }

    /**
     * Unsuspend VM
     */
    public function unsuspend(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/unsuspend');
    }

    /**
     * Get rebuild info
     */
    public function getRebuildInfo(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/rebuild');
    }

    /**
     * Add SSH key
     */
    public function addSshKey(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/addsshkey', $data);
    }

}
