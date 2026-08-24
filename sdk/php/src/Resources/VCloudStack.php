<?php

namespace HiTechCloud\SDK\Resources;

class VCloudStack extends BaseResource
{
    /**
     * Rescue VM
     */
    public function rescue(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/rescue');
    }

    /**
     * Unrescue VM
     */
    public function unrescue(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/unrescue');
    }

    /**
     * Get console URL
     */
    public function getConsole(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/console');
    }

    /**
     * Get VM usage
     */
    public function getUsage(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/usage');
    }

}
