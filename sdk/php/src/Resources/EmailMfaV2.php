<?php

namespace HiTechCloud\SDK\Resources;

class EmailMfaV2 extends BaseResource
{
    /**
     * Get MFA status
     */
    public function getMfaStatus(string $userType, int $userId): array
    {
        return $this->http->get('/api/email_mfa_v2/status/' . $userType . '/' . $userId);
    }

    /**
     * Send code
     */
    public function sendCode(array $data): array
    {
        return $this->http->post('/api/email_mfa_v2/send', $data);
    }

    /**
     * Verify code
     */
    public function verifyCode(array $data): array
    {
        return $this->http->post('/api/email_mfa_v2/verify', $data);
    }

    /**
     * List active codes
     */
    public function listActiveCodes(string $userType, int $userId): array
    {
        return $this->http->get('/api/email_mfa_v2/list/' . $userType . '/' . $userId);
    }

    /**
     * Revoke all codes
     */
    public function revokeAllCodes(array $data): array
    {
        return $this->http->post('/api/email_mfa_v2/revokeall', $data);
    }

    /**
     * Disable MFA
     */
    public function disableMfa(): array
    {
        return $this->http->post('/api/email_mfa_v2/disable');
    }

}
