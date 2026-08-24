<?php

namespace HiTechCloud\SDK\Resources;

class Notifications extends BaseResource
{
    /**
     * List notifications
     */
    public function list(array $params = []): array
    {
        return $this->http->get('/api/notifications', $params);
    }

    /**
     * Get new notifications
     */
    public function getNew(): array
    {
        return $this->http->get('/api/notifications/new');
    }

    /**
     * Acknowledge notification
     */
    public function acknowledge(int $notificationId): array
    {
        return $this->http->put('/api/notifications/' . $serviceId . '/ack');
    }

}
