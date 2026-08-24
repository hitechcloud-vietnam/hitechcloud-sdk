<?php

namespace HiTechCloud\SDK\Resources;

class Users extends BaseResource
{
    /**
     * Get user details
     */
    public function getDetails(): array
    {
        return $this->http->get('/api/details');
    }

    /**
     * Update user details
     */
    public function updateDetails(array $data): array
    {
        return $this->http->put('/api/details', $data);
    }

    /**
     * Get user logs
     */
    public function getLogs(array $params = []): array
    {
        return $this->http->get('/api/logs', $params);
    }

}
