<?php

namespace HiTechCloud\SDK\Resources;

class Pmg extends BaseResource
{
    /**
     * Get config
     */
    public function getConfig(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpmg/config');
    }

    /**
     * Add domain
     */
    public function addDomain(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/htcpmg/domains', $data);
    }

    /**
     * Set transport
     */
    public function setTransport(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/htcpmg/transport', $data);
    }

    /**
     * Get stats
     */
    public function getStats(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpmg/stats');
    }

}
