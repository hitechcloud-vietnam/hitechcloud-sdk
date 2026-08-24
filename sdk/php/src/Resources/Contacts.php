<?php

namespace HiTechCloud\SDK\Resources;

class Contacts extends BaseResource
{
    public function list(array $params = []): array
    {
        return $this->http->get('/api/contacts', $params);
    }

    public function get(int $contactId): array
    {
        return $this->http->get("/api/contacts/{$contactId}");
    }

    public function create(array $data): array
    {
        return $this->http->post('/api/contacts', $data);
    }

    public function update(int $contactId, array $data): array
    {
        return $this->http->put("/api/contacts/{$contactId}", $data);
    }

    public function delete(int $contactId): array
    {
        return $this->http->delete("/api/contacts/{$contactId}");
    }
}
