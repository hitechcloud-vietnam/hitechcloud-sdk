<?php

namespace HiTechCloud\SDK\Resources;

class CloudGpu extends BaseResource
{
    public function list(array $params = []): array
    {
        return $this->http->get('/api/gpu', $params);
    }

    public function get(int $gpuId): array
    {
        return $this->http->get("/api/gpu/{$gpuId}");
    }

    public function start(int $gpuId): array
    {
        return $this->http->post("/api/gpu/{$gpuId}/start");
    }

    public function stop(int $gpuId): array
    {
        return $this->http->post("/api/gpu/{$gpuId}/stop");
    }

    public function restart(int $gpuId): array
    {
        return $this->http->post("/api/gpu/{$gpuId}/restart");
    }

    public function getConsole(int $gpuId): array
    {
        return $this->http->get("/api/gpu/{$gpuId}/console");
    }
}
