<?php

namespace HiTechCloud\SDK\Resources;

class Services extends BaseResource
{
    /**
     * List services
     */
    public function list(array $params = []): array
    {
        return $this->http->get('/api/service', $params);
    }

    /**
     * Get service
     */
    public function get(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId);
    }

    /**
     * Get service methods
     */
    public function getMethods(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/methods');
    }

    /**
     * Cancel service
     */
    public function cancel(int $serviceId, array $data = []): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/cancel', $data);
    }

    /**
     * Get service label
     */
    public function getLabel(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/label');
    }

    /**
     * Set service label
     */
    public function setLabel(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/label', $data);
    }

    /**
     * Renew service
     */
    public function renew(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/renew');
    }

    /**
     * Get service cycle
     */
    public function getCycle(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/cycle');
    }

    /**
     * Set service cycle
     */
    public function setCycle(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/cycle', $data);
    }

}
