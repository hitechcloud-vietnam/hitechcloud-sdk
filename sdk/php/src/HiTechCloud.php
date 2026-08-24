<?php

namespace HiTechCloud\SDK;

class HiTechCloud
{
    const PRODUCTION_URL = 'https://api.hitechcloud.vn';
    const OTE_URL = 'https://ote.hitechcloud.vn';

    private HttpClient $http;

    public Resources\Auth $auth;
    public Resources\Users $users;
    public Resources\Services $services;
    public Resources\Domains $domains;
    public Resources\DnsManage $dnsManage;
    public Resources\Dns $dns;
    public Resources\Ssl $ssl;
    public Resources\Billing $billing;
    public Resources\Support $support;
    public Resources\Contacts $contacts;
    public Resources\Cart $cart;
    public Resources\Notifications $notifications;
    public Resources\Affiliate $affiliate;
    public Resources\CloudGpu $cloudGpu;
    public Resources\Virtualizor $virtualizor;

    public function __construct(
        string $baseUrl = self::PRODUCTION_URL,
        ?string $username = null,
        ?string $password = null,
        ?string $token = null,
        int $timeout = 30,
        int $maxRetries = 3
    ) {
        $this->http = new HttpClient($baseUrl, $timeout, $maxRetries);

        if ($token) {
            $this->http->setToken($token);
        }

        $this->auth = new Resources\Auth($this->http);
        $this->users = new Resources\Users($this->http);
        $this->services = new Resources\Services($this->http);
        $this->domains = new Resources\Domains($this->http);
        $this->dnsManage = new Resources\DnsManage($this->http);
        $this->dns = new Resources\Dns($this->http);
        $this->ssl = new Resources\Ssl($this->http);
        $this->billing = new Resources\Billing($this->http);
        $this->support = new Resources\Support($this->http);
        $this->contacts = new Resources\Contacts($this->http);
        $this->cart = new Resources\Cart($this->http);
        $this->notifications = new Resources\Notifications($this->http);
        $this->affiliate = new Resources\Affiliate($this->http);
        $this->cloudGpu = new Resources\CloudGpu($this->http);
        $this->virtualizor = new Resources\Virtualizor($this->http);

        if ($username && $password && !$token) {
            $this->login($username, $password);
        }
    }

    public function login(string $username, string $password): array
    {
        $result = $this->auth->login($username, $password);
        if (isset($result['token'])) {
            $this->http->setToken($result['token']);
        }
        return $result;
    }

    public function logout(): array
    {
        $result = $this->auth->logout();
        $this->http->clearToken();
        return $result;
    }
}
