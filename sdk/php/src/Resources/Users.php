<?php

namespace HiTechCloud\SDK\Resources;

class Users extends BaseResource
{
    public function getDetails(): array
    {
        return $this->http->get('/api/user');
    }

    public function updateDetails(array $data): array
    {
        return $this->http->put('/api/user', $data);
    }

    public function getLogs(): array
    {
        return $this->http->get('/api/user/logs');
    }
}
