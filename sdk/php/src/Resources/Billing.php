<?php

namespace HiTechCloud\SDK\Resources;

class Billing extends BaseResource
{
    public function getBalance(): array
    {
        return $this->http->get('/api/balance');
    }

    public function listInvoices(array $params = []): array
    {
        return $this->http->get('/api/invoice', $params);
    }

    public function getInvoice(int $invoiceId): array
    {
        return $this->http->get("/api/invoice/{$invoiceId}");
    }

    public function applyCredit(int $invoiceId): array
    {
        return $this->http->post("/api/invoice/{$invoiceId}/credit");
    }

    public function getPaymentMethods(): array
    {
        return $this->http->get('/api/payment');
    }

    public function getPaymentFees(): array
    {
        return $this->http->get('/api/payment/fees');
    }
}
