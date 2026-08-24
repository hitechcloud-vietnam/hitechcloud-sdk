<?php

namespace HiTechCloud\SDK\Resources;

class Hosting extends BaseResource
{
    /**
     * Get reinstall info
     */
    public function getReinstall(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/reinstall');
    }

    /**
     * Reinstall
     */
    public function reinstall(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/reinstall', $data);
    }

    /**
     * Get status
     */
    public function getStatus(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/status');
    }

    /**
     * Get bandwidth graphs
     */
    public function getBandwidthGraphs(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/bandwidth-graphs');
    }

    /**
     * Get bandwidth
     */
    public function getBandwidth(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/bandwidth');
    }

    /**
     * Reset password
     */
    public function resetPassword(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/reset');
    }

}
