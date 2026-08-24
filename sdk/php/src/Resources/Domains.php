<?php

namespace HiTechCloud\SDK\Resources;

class Domains extends BaseResource
{
    /**
     * WHOIS lookup
     */
    public function whois(string $domain): array
    {
        return $this->http->get('/api/whois/' . $domain);
    }

    /**
     * List domains
     */
    public function list(array $params = []): array
    {
        return $this->http->get('/api/domain', $params);
    }

    /**
     * Get domain
     */
    public function get(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId);
    }

    /**
     * Get domain by name
     */
    public function getByName(string $name): array
    {
        return $this->http->get('/api/domain/name/' . $name);
    }

    /**
     * Get nameservers
     */
    public function getNameservers(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/ns');
    }

    /**
     * Set nameservers
     */
    public function setNameservers(int $domainId, array $data): array
    {
        return $this->http->put('/api/domain/' . $serviceId . '/ns', $data);
    }

    /**
     * Get EPP code
     */
    public function getEppCode(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/epp');
    }

    /**
     * Sync domain
     */
    public function sync(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/sync');
    }

    /**
     * Get registrar lock
     */
    public function getRegLock(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/reglock');
    }

    /**
     * Set registrar lock
     */
    public function setRegLock(int $domainId, array $data): array
    {
        return $this->http->put('/api/domain/' . $serviceId . '/reglock', $data);
    }

    /**
     * Toggle ID protection
     */
    public function toggleIdProtection(int $domainId, array $data): array
    {
        return $this->http->put('/api/domain/' . $serviceId . '/idprotection', $data);
    }

    /**
     * Get domain contacts
     */
    public function getContacts(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/contact');
    }

    /**
     * Set domain contacts
     */
    public function setContacts(int $domainId, array $data): array
    {
        return $this->http->put('/api/domain/' . $serviceId . '/contact', $data);
    }

    /**
     * Get email forwarding
     */
    public function getEmailForwarding(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/email/forwarding');
    }

    /**
     * Set email forwarding
     */
    public function setEmailForwarding(int $domainId, array $data): array
    {
        return $this->http->put('/api/domain/' . $serviceId . '/email/forwarding', $data);
    }

    /**
     * Check availability
     */
    public function checkAvailability(string $domain): array
    {
        return $this->http->get('/api/domain/availability/' . $domain);
    }

    /**
     * List domain orders
     */
    public function listOrders(array $params = []): array
    {
        return $this->http->get('/api/domain/order', $params);
    }

    /**
     * Create domain order
     */
    public function createOrder(array $data): array
    {
        return $this->http->post('/api/domain/order', $data);
    }

    /**
     * Get order form
     */
    public function getOrderForm(int $orderId): array
    {
        return $this->http->get('/api/domain/order/' . $serviceId . '/form');
    }

    /**
     * Renew domain
     */
    public function renew(int $domainId, array $data = []): array
    {
        return $this->http->post('/api/domain/' . $serviceId . '/renew', $data);
    }

    /**
     * WHOIS lookup v2
     */
    public function whoisLookup(string $domain): array
    {
        return $this->http->get('/api/whoislookup/' . $domain);
    }

    /**
     * Get domain documents
     */
    public function getDocuments(int $domainId): array
    {
        return $this->http->get('/api/domain/' . $serviceId . '/documents');
    }

}
