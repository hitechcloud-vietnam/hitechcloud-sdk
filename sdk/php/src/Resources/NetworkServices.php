<?php

namespace HiTechCloud\SDK\Resources;

class NetworkServices extends BaseResource
{
    /**
     * Get IPs
     */
    public function getIps(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/ip');
    }

    /**
     * Get rDNS
     */
    public function getRdns(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/rdns');
    }

    /**
     * Set rDNS
     */
    public function setRdns(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/rdns', $data);
    }

}
