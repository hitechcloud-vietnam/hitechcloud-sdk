<?php

namespace HiTechCloud\SDK\Resources;

use HiTechCloud\SDK\HttpClient;

class Auth extends BaseResource
{
    public function login(string $email, string $password): array
    {
        return $this->http->post('/api/auth/login', compact('email', 'password'));
    }

    public function logout(): array
    {
        return $this->http->post('/api/auth/logout');
    }

    public function refreshToken(): array
    {
        return $this->http->post('/api/auth/refresh');
    }

    public function revokeToken(): array
    {
        return $this->http->post('/api/auth/revoke');
    }

    public function passwordReset(string $email): array
    {
        return $this->http->post('/api/auth/password/reset', compact('email'));
    }

    public function signup(string $email, string $password, string $firstName, string $lastName): array
    {
        return $this->http->post('/api/auth/signup', [
            'email' => $email,
            'password' => $password,
            'first_name' => $firstName,
            'last_name' => $lastName,
        ]);
    }
}
