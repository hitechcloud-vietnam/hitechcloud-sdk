<?php

namespace HiTechCloud\SDK\Resources;

class PasskeyV2 extends BaseResource
{
    /**
     * Get MFA status
     */
    public function getMfaStatus(string $userType, int $userId): array
    {
        return $this->http->get('/api/passkeyv2/status/' . $userType . '/' . $userId);
    }

    /**
     * List credentials
     */
    public function listCredentials(string $userType, int $userId): array
    {
        return $this->http->get('/api/passkeyv2/credentials/' . $userType . '/' . $userId);
    }

    /**
     * Delete credential
     */
    public function deleteCredential(string $userType, int $userId, array $data): array
    {
        return $this->http->post('/api/passkeyv2/credentials/' . $userType . '/' . $userId . '/delete', $data);
    }

    /**
     * Send email OTP
     */
    public function sendEmailOtp(array $data): array
    {
        return $this->http->post('/api/passkeyv2/email_otp/send', $data);
    }

    /**
     * Verify email OTP
     */
    public function verifyEmailOtp(array $data): array
    {
        return $this->http->post('/api/passkeyv2/email_otp/verify', $data);
    }

    /**
     * Disable MFA
     */
    public function disableMfa(string $userType, int $userId): array
    {
        return $this->http->post('/api/passkeyv2/disable/' . $userType . '/' . $userId);
    }

}
