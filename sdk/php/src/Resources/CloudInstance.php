<?php

namespace HiTechCloud\SDK\Resources;

class CloudInstance extends BaseResource
{
    /**
     * List VMs
     */
    public function list(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms');
    }

    /**
     * Create VM
     */
    public function create(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms', $data);
    }

    /**
     * Get VM
     */
    public function get(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId);
    }

    /**
     * Delete VM
     */
    public function delete(int $serviceId, int $vmId): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/vms/' . $vmId);
    }

    /**
     * Update VM
     */
    public function update(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/vms/' . $vmId, $data);
    }

    /**
     * Stop VM
     */
    public function stop(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/stop');
    }

    /**
     * Start VM
     */
    public function start(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/start');
    }

    /**
     * Reboot VM
     */
    public function reboot(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/reboot');
    }

    /**
     * Reset password
     */
    public function resetPassword(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/resetpwd', $data);
    }

    /**
     * Rebuild VM
     */
    public function rebuild(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/rebuild', $data);
    }

    /**
     * List VM IPs
     */
    public function listIps(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/ips');
    }

    /**
     * Add IP
     */
    public function addIp(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/ips', $data);
    }

    /**
     * List interfaces
     */
    public function listInterfaces(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/interfaces');
    }

    /**
     * Get CPU usage
     */
    public function getCpuUsage(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/usage/cpu');
    }

    /**
     * Get network usage
     */
    public function getNetUsage(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/usage/net');
    }

    /**
     * Get disk usage
     */
    public function getDiskUsage(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/usage/disk');
    }

    /**
     * List storage
     */
    public function listStorage(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/storage');
    }

    /**
     * Resize storage
     */
    public function resizeStorage(int $serviceId, int $vmId, int $diskId, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/vms/' . $vmId . '/storage/' . $diskId, $data);
    }

    /**
     * List images
     */
    public function listImages(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/images');
    }

    /**
     * Create image
     */
    public function createImage(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/images', $data);
    }

    /**
     * Get interface IPs
     */
    public function getInterfaceIps(int $serviceId, int $vmId, string $iface): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/interfaces/' . $iface . '/ips');
    }

    /**
     * Delete IP
     */
    public function deleteIp(int $serviceId, int $vmId, int $ipId): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/vms/' . $vmId . '/ips/' . $ipId);
    }

    /**
     * Get rDNS
     */
    public function getRdns(int $serviceId, int $vmId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/' . $vmId . '/rdns');
    }

    /**
     * Set rDNS
     */
    public function setRdns(int $serviceId, int $vmId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/rdns', $data);
    }

    /**
     * Rebuild network
     */
    public function rebuildNetwork(int $serviceId, int $vmId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/' . $vmId . '/rebuild_network');
    }

}
