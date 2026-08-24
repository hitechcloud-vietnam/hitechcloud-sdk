<?php

namespace HiTechCloud\SDK\Resources;

class Ssl extends BaseResource
{
    /**
     * List certificates
     */
    public function list(array $params = []): array
    {
        return $this->http->get('/api/certificate', $params);
    }

    /**
     * Get certificate
     */
    public function get(int $certId): array
    {
        return $this->http->get('/api/certificate/' . $serviceId);
    }

    /**
     * Get certificate CRT
     */
    public function getCrt(int $certId): array
    {
        return $this->http->get('/api/certificate/' . $serviceId . '/crt');
    }

    /**
     * List SSL orders
     */
    public function listOrders(array $params = []): array
    {
        return $this->http->get('/api/certificate/order', $params);
    }

    /**
     * Create SSL order
     */
    public function createOrder(array $data): array
    {
        return $this->http->post('/api/certificate/order', $data);
    }

    /**
     * Get order software
     */
    public function getOrderSoftware(int $productId): array
    {
        return $this->http->get('/api/certificate/order/' . $productId . '/software');
    }

}
