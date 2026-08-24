<?php

namespace HiTechCloud\SDK\Resources;

class Affiliate extends BaseResource
{
    public function getDetails(): array
    {
        return $this->http->get('/api/affiliate');
    }

    public function getBalance(): array
    {
        return $this->http->get('/api/affiliate/balance');
    }

    public function getPayout(): array
    {
        return $this->http->get('/api/affiliate/payout');
    }

    public function updatePayout(array $data): array
    {
        return $this->http->put('/api/affiliate/payout', $data);
    }

    public function listReferrals(array $params = []): array
    {
        return $this->http->get('/api/affiliate/referrals', $params);
    }

    public function listTransactions(array $params = []): array
    {
        return $this->http->get('/api/affiliate/transactions', $params);
    }
}
