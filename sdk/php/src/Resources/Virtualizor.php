<?php

namespace HiTechCloud\SDK\Resources;

class Virtualizor extends BaseResource
{
    public function list(array $params = []): array
    {
        return $this->http->get('/api/virtualizor', $params);
    }

    public function get(int $vpsId): array
    {
        return $this->http->get("/api/virtualizor/{$vpsId}");
    }

    public function start(int $vpsId): array
    {
        return $this->http->post("/api/virtualizor/{$vpsId}/start");
    }

    public function stop(int $vpsId): array
    {
        return $this->http->post("/api/virtualizor/{$vpsId}/stop");
    }
}
