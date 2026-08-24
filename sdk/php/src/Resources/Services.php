<?php

namespace HiTechCloud\SDK\Resources;

class Services extends BaseResource
{
    public function list(array $params = []): array
    {
        return $this->http->get('/api/service', $params);
    }

    public function get(int $serviceId): array
    {
        return $this->http->get("/api/service/{$serviceId}");
    }

    public function listMethods(): array
    {
        return $this->http->get('/api/service/methods');
    }

    public function cancel(int $serviceId, string $reason = ''): array
    {
        return $this->http->post("/api/service/{$serviceId}/cancel", ['reason' => $reason]);
    }

    public function getLabel(int $serviceId): array
    {
        return $this->http->get("/api/service/{$serviceId}/label");
    }

    public function setLabel(int $serviceId, string $label): array
    {
        return $this->http->put("/api/service/{$serviceId}/label", ['label' => $label]);
    }

    public function renew(int $serviceId): array
    {
        return $this->http->post("/api/service/{$serviceId}/renew");
    }

    public function listBillingCycles(int $serviceId): array
    {
        return $this->http->get("/api/service/{$serviceId}/billing_cycles");
    }

    public function changeBillingCycle(int $serviceId, string $billingCycle): array
    {
        return $this->http->put("/api/service/{$serviceId}/billing_cycles", [
            'billing_cycle' => $billingCycle,
        ]);
    }
}
