<?php

namespace HiTechCloud\SDK\Resources;

class Notifications extends BaseResource
{
    public function list(array $params = []): array
    {
        return $this->http->get('/api/notifications', $params);
    }

    public function getPreferences(): array
    {
        return $this->http->get('/api/notifications/preferences');
    }

    public function updatePreferences(array $data): array
    {
        return $this->http->put('/api/notifications/preferences', $data);
    }
}
