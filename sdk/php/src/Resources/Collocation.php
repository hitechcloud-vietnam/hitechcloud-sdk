<?php

namespace HiTechCloud\SDK\Resources;

class Collocation extends BaseResource
{
    /**
     * List PDU ports
     */
    public function listPdu(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pdu');
    }

    /**
     * Get PDU port
     */
    public function getPduPort(int $serviceId, int $port): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/pdu/' . $port);
    }

    /**
     * Set PDU port state
     */
    public function setPduPort(int $serviceId, int $port, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/pdu/' . $port, $data);
    }

}
