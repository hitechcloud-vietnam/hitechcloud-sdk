<?php

namespace HiTechCloud\SDK\Resources;

class Ipam extends BaseResource
{
    /**
     * List IPs
     */
    public function listIps(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcipam/ips');
    }

    /**
     * List subnets
     */
    public function listSubnets(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcipam/subnets');
    }

    /**
     * List rDNS
     */
    public function listRdns(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcipam/rdns');
    }

    /**
     * Set rDNS
     */
    public function setRdns(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/htcipam/rdns', $data);
    }

}
