<?php

namespace HiTechCloud\SDK\Resources;

class AffiliatesAdvanced extends BaseResource
{
    /**
     * Get affiliate info
     */
    public function getInfo(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/info');
    }

    /**
     * Get stats
     */
    public function getStats(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/stats');
    }

    /**
     * Get commission plans
     */
    public function getCommissionPlans(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/commission-plans');
    }

    /**
     * Get vouchers
     */
    public function getVouchers(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/vouchers');
    }

    /**
     * Get commissions
     */
    public function getCommissions(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/commissions');
    }

    /**
     * Get referrals
     */
    public function getReferrals(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/referrals');
    }

    /**
     * Get payouts
     */
    public function getPayouts(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/payouts');
    }

    /**
     * Get campaigns
     */
    public function getCampaigns(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/campaigns');
    }

    /**
     * Get audit log
     */
    public function getAudit(int $clientId): array
    {
        return $this->http->get('/api/affiliates_adv/' . $clientId . '/audit');
    }

    /**
     * Activate affiliate
     */
    public function activate(int $clientId): array
    {
        return $this->http->post('/api/affiliates_adv/' . $clientId . '/activate');
    }

    /**
     * Set commission plan
     */
    public function setCommissionPlan(int $clientId, int $commissionId): array
    {
        return $this->http->post('/api/affiliates_adv/' . $clientId . '/commission-plan/' . $commissionId);
    }

    /**
     * Generate voucher
     */
    public function generateVoucher(int $clientId, int $planId): array
    {
        return $this->http->post('/api/affiliates_adv/' . $clientId . '/vouchers/' . $planId);
    }

    /**
     * Delete voucher
     */
    public function deleteVoucher(int $clientId, int $voucherId): array
    {
        return $this->http->delete('/api/affiliates_adv/' . $clientId . '/vouchers/' . $voucherId);
    }

    /**
     * Set landing page
     */
    public function setLandingPage(int $clientId, array $data): array
    {
        return $this->http->post('/api/affiliates_adv/' . $clientId . '/landing-page', $data);
    }

}
