<?php

namespace HiTechCloud\SDK\Resources;

class DnsManage extends BaseResource
{
    /**
     * Register nameservers
     */
    public function registerNameservers(int $domainId, array $data): array
    {
        return $this->http->post('/api/domain/' . $serviceId . '/reg', $data);
    }

    /**
     * Get DNS records
     */
    public function getRecords(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/dns');
    }

    /**
     * Create DNS record
     */
    public function createRecord(int $domainId, array $data): array
    {
        return $this->http->post('/api/domain/' . $serviceId . '/dns', $data);
    }

    /**
     * Update DNS record
     */
    public function updateRecord(int $domainId, int $index, array $data): array
    {
        return $this->http->put('/api/domain/' . $serviceId . '/dns/' . $index, $data);
    }

    /**
     * Delete DNS record
     */
    public function deleteRecord(int $domainId, int $index): array
    {
        return $this->http->delete('/api/domain/' . $serviceId . '/dns/' . $index);
    }

    /**
     * Get record types
     */
    public function getRecordTypes(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/dns/types');
    }

    /**
     * Get DNSSEC flags
     */
    public function getDnssecFlags(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/dnssec/flags');
    }

    /**
     * Get DNSSEC records
     */
    public function getDnssec(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/dnssec');
    }

    /**
     * Create DNSSEC record
     */
    public function createDnssec(int $domainId, array $data): array
    {
        return $this->http->post('/api/domain/' . $serviceId . '/dnssec', $data);
    }

    /**
     * Delete DNSSEC record
     */
    public function deleteDnssec(int $domainId, array $data): array
    {
        return $this->http->delete('/api/domain/' . $serviceId . '/dnssec');
    }

}
