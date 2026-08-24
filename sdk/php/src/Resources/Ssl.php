<?php

namespace HiTechCloud\SDK\Resources;

class Ssl extends BaseResource
{
    public function list(array $params = []): array
    {
        return $this->http->get('/api/certificate', $params);
    }

    public function get(int $certificateId): array
    {
        return $this->http->get("/api/certificate/{$certificateId}");
    }

    public function download(int $certificateId): array
    {
        return $this->http->get("/api/certificate/{$certificateId}/crt");
    }

    public function listAvailable(): array
    {
        return $this->http->get('/api/certificate/order');
    }

    public function order(array $data): array
    {
        return $this->http->post('/api/certificate/order', $data);
    }

    public function listServerSoftware(int $productId): array
    {
        return $this->http->get("/api/certificate/order/{$productId}/software");
    }
}
