<?php

namespace HiTechCloud\SDK\Resources;

class ServiceStatus extends BaseResource
{
    /**
     * List statuses
     */
    public function list(array $params = []): array
    {
        return $this->http->get('/api/statuses', $params);
    }

    /**
     * Update status
     */
    public function update(int $statusId, array $data): array
    {
        return $this->http->put('/api/statuses/' . $serviceId, $data);
    }

}
