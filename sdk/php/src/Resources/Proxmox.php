<?php

namespace HiTechCloud\SDK\Resources;

class Proxmox extends BaseResource
{
    /**
     * Get status
     */
    public function getStatus(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpve/status');
    }

    /**
     * Power action
     */
    public function powerAction(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/htcpve/power', $data);
    }

    /**
     * List VMs
     */
    public function listVms(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpve/vms');
    }

    /**
     * List IPs
     */
    public function listIps(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpve/ips');
    }

    /**
     * Set rDNS
     */
    public function setRdns(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/htcpve/rdns', $data);
    }

    /**
     * List backups
     */
    public function listBackups(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpve/backups');
    }

    /**
     * Create backup
     */
    public function createBackup(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/htcpve/backups', $data);
    }

    /**
     * List snapshots
     */
    public function listSnapshots(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpve/snapshots');
    }

    /**
     * Create snapshot
     */
    public function createSnapshot(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/htcpve/snapshots', $data);
    }

    /**
     * Get bandwidth usage
     */
    public function getBandwidthUsage(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/htcpve/usage');
    }

}
