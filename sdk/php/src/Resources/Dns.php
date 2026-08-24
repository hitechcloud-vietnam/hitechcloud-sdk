<?php

namespace HiTechCloud\SDK\Resources;

class Dns extends BaseResource
{
    public function list(): array
    {
        return $this->http->get('/api/dns');
    }

    public function listForService(int $serviceId): array
    {
        return $this->http->get("/api/service/{$serviceId}/dns");
    }

    public function addZone(int $serviceId, string $domain): array
    {
        return $this->http->post("/api/service/{$serviceId}/dns", ['domain' => $domain]);
    }

    public function getZone(int $serviceId, int $zoneId): array
    {
        return $this->http->get("/api/service/{$serviceId}/dns/{$zoneId}");
    }

    public function deleteZone(int $serviceId, int $zoneId): array
    {
        return $this->http->delete("/api/service/{$serviceId}/dns/{$zoneId}");
    }

    public function addRecord(int $serviceId, int $zoneId, array $data): array
    {
        return $this->http->post("/api/service/{$serviceId}/dns/{$zoneId}/records", $data);
    }

    public function editRecord(int $serviceId, int $zoneId, int $recordId, array $data): array
    {
        return $this->http->put("/api/service/{$serviceId}/dns/{$zoneId}/records/{$recordId}", $data);
    }

    public function deleteRecord(int $serviceId, int $zoneId, int $recordId): array
    {
        return $this->http->delete("/api/service/{$serviceId}/dns/{$zoneId}/records/{$recordId}");
    }
}
