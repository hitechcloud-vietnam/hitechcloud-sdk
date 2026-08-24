<?php

namespace HiTechCloud\SDK\Resources;

class Auth extends BaseResource
{
    /**
     * Login
     */
    public function login(string $email, string $password): array
    {
        return $this->http->post('/api/login');
    }

    /**
     * Logout
     */
    public function logout(): array
    {
        return $this->http->post('/api/logout');
    }

    /**
     * Refresh token
     */
    public function refreshToken(): array
    {
        return $this->http->post('/api/token');
    }

    /**
     * Revoke token
     */
    public function revokeToken(): array
    {
        return $this->http->post('/api/revoke');
    }

    /**
     * Password reset
     */
    public function passwordReset(string $email): array
    {
        return $this->http->post('/api/passwordreset');
    }

    /**
     * Signup
     */
    public function signup(string $email, string $password, string $firstName, string $lastName): array
    {
        return $this->http->post('/api/signup');
    }

}
