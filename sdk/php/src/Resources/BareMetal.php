<?php

namespace HiTechCloud\SDK\Resources;

class BareMetal extends BaseResource
{
    /**
     * Get reinstall templates
     */
    public function getReinstallTemplates(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/reinstall/templates');
    }

    /**
     * Cancel diagnostics
     */
    public function cancelDiag(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/diag/cancel');
    }

    /**
     * Get diag templates
     */
    public function getDiagTemplates(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/diag/templates');
    }

    /**
     * Get diagnostics
     */
    public function getDiag(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/diag');
    }

    /**
     * Run diagnostics
     */
    public function runDiag(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/diag', $data);
    }

    /**
     * Get rescue templates
     */
    public function getRescueTemplates(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/rescue/templates');
    }

    /**
     * Get rescue mode
     */
    public function getRescue(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/rescue');
    }

    /**
     * Start rescue mode
     */
    public function startRescue(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/rescue', $data);
    }

    /**
     * Cancel rescue mode
     */
    public function cancelRescue(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/rescue/cancel');
    }

    /**
     * Get server info
     */
    public function getInfo(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/info');
    }

    /**
     * Set hostname
     */
    public function setHostname(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/hostname', $data);
    }

    /**
     * List IPs
     */
    public function listIps(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/ips');
    }

    /**
     * Add IP
     */
    public function addIp(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/ips', $data);
    }

    /**
     * List VLANs
     */
    public function listVlans(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vlans');
    }

    /**
     * Get IP details
     */
    public function getIp(int $serviceId, string $ip): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/ips/' . $ip);
    }

    /**
     * Update IP
     */
    public function updateIp(int $serviceId, string $ip, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/ips/' . $ip, $data);
    }

    /**
     * Get reinstall info
     */
    public function getReinstall(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/reinstall');
    }

    /**
     * Reinstall server
     */
    public function reinstall(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/reinstall', $data);
    }

    /**
     * Get server status
     */
    public function getStatus(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/status');
    }

    /**
     * Power action
     */
    public function powerAction(int $serviceId, string $action): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/power/' . $action);
    }

    /**
     * Get server stock
     */
    public function getServerStock(array $params = []): array
    {
        return $this->http->get('/api/serverstock', $params);
    }

}
