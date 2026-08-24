<?php

namespace HiTechCloud\SDK\Resources;

class CloudGpu extends BaseResource
{
    /**
     * Reboot VM
     */
    public function reboot(int $serviceId, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/vms/reboot', $data);
    }

    /**
     * Stop VM
     */
    public function stop(int $serviceId, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/vms/stop', $data);
    }

    /**
     * Start VM
     */
    public function start(int $serviceId, array $data): array
    {
        return $this->http->put('/api/service/' . $serviceId . '/vms/start', $data);
    }

    /**
     * Get firewall rules
     */
    public function getFirewall(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/vms/firewall');
    }

    /**
     * Create firewall rule
     */
    public function createFirewallRule(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/vms/firewall', $data);
    }

    /**
     * Delete firewall rule
     */
    public function deleteFirewallRule(int $serviceId, int $position): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/vms/firewall/' . $position);
    }

}
