<?php

namespace HiTechCloud\SDK\Resources;

class Billing extends BaseResource
{
    /**
     * Get balance
     */
    public function getBalance(): array
    {
        return $this->http->get('/api/balance');
    }

    /**
     * List invoices
     */
    public function listInvoices(array $params = []): array
    {
        return $this->http->get('/api/invoice', $params);
    }

    /**
     * Get invoice
     */
    public function getInvoice(int $invoiceId): array
    {
        return $this->http->get('/api/invoice/' . $serviceId);
    }

    /**
     * Apply credit
     */
    public function applyCredit(int $invoiceId, array $data): array
    {
        return $this->http->post('/api/invoice/' . $serviceId . '/credit', $data);
    }

    /**
     * List payments
     */
    public function listPayments(array $params = []): array
    {
        return $this->http->get('/api/payment', $params);
    }

    /**
     * Get payment fees
     */
    public function getPaymentFees(): array
    {
        return $this->http->get('/api/payment/fees');
    }

}
