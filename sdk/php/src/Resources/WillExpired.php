<?php

namespace HiTechCloud\SDK\Resources;

class WillExpired extends BaseResource
{
    /**
     * List expiring items
     */
    public function list(array $params = []): array
    {
        return $this->http->get('/api/willexpired', $params);
    }

    /**
     * Get summary
     */
    public function getSummary(array $params = []): array
    {
        return $this->http->get('/api/willexpired/summary', $params);
    }

    /**
     * Get config
     */
    public function getConfig(): array
    {
        return $this->http->get('/api/willexpired/config');
    }

    /**
     * List invoices
     */
    public function listInvoices(): array
    {
        return $this->http->get('/api/willexpired/invoices');
    }

    /**
     * List requests
     */
    public function listRequests(): array
    {
        return $this->http->get('/api/willexpired/requests');
    }

    /**
     * Export all
     */
    public function exportAll(): array
    {
        return $this->http->get('/api/willexpired/export');
    }

    /**
     * Get item
     */
    public function getItem(string $itemType, int $itemId): array
    {
        return $this->http->get('/api/willexpired/' . $itemType . '/' . $serviceId);
    }

    /**
     * Renew item
     */
    public function renew(string $itemType, int $itemId): array
    {
        return $this->http->post('/api/willexpired/' . $itemType . '/' . $serviceId . '/renew');
    }

    /**
     * Get auto-renew
     */
    public function getAutorenew(string $itemType, int $itemId): array
    {
        return $this->http->get('/api/willexpired/' . $itemType . '/' . $serviceId . '/autorenew');
    }

    /**
     * Set auto-renew
     */
    public function setAutorenew(string $itemType, int $itemId, array $data): array
    {
        return $this->http->put('/api/willexpired/' . $itemType . '/' . $serviceId . '/autorenew', $data);
    }

}
