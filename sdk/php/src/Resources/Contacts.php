<?php

namespace HiTechCloud\SDK\Resources;

class Contacts extends BaseResource
{
    /**
     * List contacts
     */
    public function list(array $params = []): array
    {
        return $this->http->get('/api/contact', $params);
    }

    /**
     * Create contact
     */
    public function create(array $data): array
    {
        return $this->http->post('/api/contact', $data);
    }

    /**
     * Get contact privileges
     */
    public function getPrivileges(): array
    {
        return $this->http->get('/api/contact/privileges');
    }

    /**
     * Get contact
     */
    public function get(int $contactId): array
    {
        return $this->http->get('/api/contact/' . $serviceId);
    }

    /**
     * Update contact
     */
    public function update(int $contactId, array $data): array
    {
        return $this->http->put('/api/contact/' . $serviceId, $data);
    }

}
