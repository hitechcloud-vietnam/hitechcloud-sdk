<?php

namespace HiTechCloud\SDK\Resources;

class DnsManage extends BaseResource
{
    public function getRecords(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/dns");
    }

    public function createRecord(int $domainId, array $data): array
    {
        return $this->http->post("/api/domain/{$domainId}/dns", $data);
    }

    public function updateRecord(int $domainId, int $index, array $data): array
    {
        return $this->http->put("/api/domain/{$domainId}/dns/{$index}", $data);
    }

    public function deleteRecord(int $domainId, int $index): array
    {
        return $this->http->delete("/api/domain/{$domainId}/dns/{$index}");
    }

    public function getRecordTypes(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/dns/types");
    }

    public function getDnssecFlags(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/dnssec/flags");
    }

    public function getDnssecRecords(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/dnssec");
    }

    public function createDnssecRecord(int $domainId, array $data): array
    {
        return $this->http->post("/api/domain/{$domainId}/dnssec", $data);
    }

    public function deleteDnssecRecord(int $domainId): array
    {
        return $this->http->delete("/api/domain/{$domainId}/dnssec");
    }

    public function registerNameserver(int $domainId, string $nameserver, string $ip): array
    {
        return $this->http->post("/api/domain/{$domainId}/reg", [
            'nameserver' => $nameserver,
            'ip' => $ip,
        ]);
    }
}
