<?php

namespace HiTechCloud\SDK\Resources;

class Affiliate extends BaseResource
{
    /**
     * Get affiliate summary
     */
    public function getSummary(): array
    {
        return $this->http->get('/api/affiliates/summary');
    }

    /**
     * List campaigns
     */
    public function listCampaigns(): array
    {
        return $this->http->get('/api/affiliates/campaigns');
    }

    /**
     * List commissions
     */
    public function listCommissions(array $params = []): array
    {
        return $this->http->get('/api/affiliates/commissions', $params);
    }

    /**
     * List payouts
     */
    public function listPayouts(): array
    {
        return $this->http->get('/api/affiliates/payouts');
    }

    /**
     * List vouchers
     */
    public function listVouchers(): array
    {
        return $this->http->get('/api/affiliates/vouchers');
    }

    /**
     * List commission plans
     */
    public function listCommissionPlans(): array
    {
        return $this->http->get('/api/affiliates/commissionplans');
    }

}
