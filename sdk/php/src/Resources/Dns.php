<?php

namespace HiTechCloud\SDK\Resources;

class Dns extends BaseResource
{
    /**
     * List DNS zones
     */
    public function listZones(array $params = []): array
    {
        return $this->http->get('/api/dns', $params);
    }

    /**
     * Create DNS zone
     */
    public function createZone(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/dns', $data);
    }

    /**
     * Get service DNS zones
     */
    public function getZones(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/dns');
    }

    /**
     * Get DNS zone
     */
    public function getZone(int $serviceId, int $zoneId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/dns/' . $zoneId);
    }

    /**
     * Delete DNS zone
     */
    public function deleteZone(int $serviceId, int $zoneId): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/dns/' . $zoneId);
    }

    /**
     * Create record
     */
    public function createRecord(int $serviceId, int $zoneId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/dns/' . $zoneId . '/records', $data);
    }

    /**
     * Update record
     */
    public function updateRecord(int $serviceId, int $zoneId, int $recordId, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/dns/' . $zoneId . '/records/' . $recordId, $data);
    }

    /**
     * Delete record
     */
    public function deleteRecord(int $serviceId, int $zoneId, int $recordId): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/dns/' . $zoneId . '/records/' . $recordId);
    }

}
