<?php

namespace HiTechCloud\SDK\Resources;

class Domains extends BaseResource
{
    public function list(array $params = []): array
    {
        return $this->http->get('/api/domain', $params);
    }

    public function get(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}");
    }

    public function getByName(string $name): array
    {
        return $this->http->get("/api/domain/name/{$name}");
    }

    public function whois(string $domain): array
    {
        return $this->http->get("/api/whois/{$domain}");
    }

    public function whoisLookup(string $domain): array
    {
        return $this->http->get("/api/whoislookup/{$domain}");
    }

    public function checkAvailability(string $domain): array
    {
        return $this->http->get("/api/domain/availability/{$domain}");
    }

    public function getNameservers(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/ns");
    }

    public function updateNameservers(int $domainId, array $ns): array
    {
        return $this->http->put("/api/domain/{$domainId}/ns", $ns);
    }

    public function getEppCode(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/epp");
    }

    public function sync(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/sync");
    }

    public function getLock(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/reglock");
    }

    public function updateLock(int $domainId, bool $reglock): array
    {
        return $this->http->put("/api/domain/{$domainId}/reglock", ['reglock' => $reglock]);
    }

    public function updateIdProtection(int $domainId, bool $idprotection): array
    {
        return $this->http->put("/api/domain/{$domainId}/idprotection", ['idprotection' => $idprotection]);
    }

    public function getContact(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/contact");
    }

    public function updateContact(int $domainId, array $data): array
    {
        return $this->http->put("/api/domain/{$domainId}/contact", $data);
    }

    public function getEmailForwarding(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/email/forwarding");
    }

    public function updateEmailForwarding(int $domainId, array $entries): array
    {
        return $this->http->put("/api/domain/{$domainId}/email/forwarding", ['entries' => $entries]);
    }

    public function getAvailableTlds(): array
    {
        return $this->http->get('/api/domain/order');
    }

    public function order(string $domain, int $years = 1, array $data = []): array
    {
        return $this->http->post('/api/domain/order', array_merge(['domain' => $domain, 'years' => $years], $data));
    }

    public function renew(int $domainId, int $years = 1): array
    {
        return $this->http->post("/api/domain/{$domainId}/renew", ['years' => $years]);
    }

    public function getTldForm(int $tldId): array
    {
        return $this->http->get("/api/domain/order/{$tldId}/form");
    }

    public function getDocuments(int $domainId): array
    {
        return $this->http->get("/api/domain/{$domainId}/documents");
    }
}
