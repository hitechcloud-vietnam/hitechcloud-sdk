<?php

namespace HiTechCloud\SDK\Resources;

class Partner extends BaseResource
{
    /**
     * Get partner info
     */
    public function getPartnerInfo(): array
    {
        return $this->http->get('/api/partner');
    }

    /**
     * Apply
     */
    public function apply(array $data): array
    {
        return $this->http->post('/api/partner/apply', $data);
    }

    /**
     * List tiers
     */
    public function listTiers(): array
    {
        return $this->http->get('/api/partner/tiers');
    }

    /**
     * Get pricing
     */
    public function getPricing(): array
    {
        return $this->http->get('/api/partner/pricing');
    }

    /**
     * List customers
     */
    public function listCustomers(): array
    {
        return $this->http->get('/api/partner/customers');
    }

    /**
     * Get earnings
     */
    public function getEarnings(): array
    {
        return $this->http->get('/api/partner/earnings');
    }

    /**
     * Get wallet
     */
    public function getWallet(): array
    {
        return $this->http->get('/api/partner/wallet');
    }

    /**
     * List payouts
     */
    public function listPayouts(): array
    {
        return $this->http->get('/api/partner/payouts');
    }

    /**
     * Request payout
     */
    public function requestPayout(array $data): array
    {
        return $this->http->post('/api/partner/payouts', $data);
    }

    /**
     * List leads
     */
    public function listLeads(): array
    {
        return $this->http->get('/api/partner/leads');
    }

    /**
     * Create lead
     */
    public function createLead(array $data): array
    {
        return $this->http->post('/api/partner/leads', $data);
    }

    /**
     * Get referral
     */
    public function getReferral(): array
    {
        return $this->http->get('/api/partner/referral');
    }

    /**
     * Get rates
     */
    public function getRates(): array
    {
        return $this->http->get('/api/partner/rates');
    }

}
