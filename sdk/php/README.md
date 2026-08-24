# HiTechCloud PHP SDK

[![Packagist Version](https://img.shields.io/packagist/v/hitechcloud/sdk)](https://packagist.org/packages/hitechcloud/sdk)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Official PHP SDK for [HiTechCloud UserAPI](https://docs.hitechcloud.vn).

## Installation

```bash
composer require hitechcloud/sdk
```

## Quick Start

```php
<?php

use HiTechCloud\SDK\HiTechCloud;

// Using credentials
$client = new HiTechCloud(
    baseUrl: 'https://api.hitechcloud.vn',
    username: 'your@email.com',
    password: 'your_password'
);

// Or using existing token
$client = new HiTechCloud(
    token: 'your_api_token'
);

// List services
$services = $client->services->list();

// Get domain details
$domain = $client->domains->get(123);

// Check balance
$balance = $client->billing->getBalance();
```

## Environments

| Environment | Base URL |
|-------------|----------|
| Production  | `https://api.hitechcloud.vn` |
| Sandbox (OTE) | `https://ote.hitechcloud.vn` |

## API Groups

### Account & Authentication
```php
$client->auth->login('email', 'password');
$client->auth->logout();
$client->auth->refreshToken();
$client->auth->revokeToken();
$client->auth->passwordReset('email');
$client->auth->signup('email', 'password', 'firstName', 'lastName');
```

### User Profile
```php
$client->users->getDetails();
$client->users->updateDetails(['first_name' => 'New Name']);
$client->users->getLogs();
```

### Services
```php
$client->services->list();
$client->services->get($serviceId);
$client->services->cancel($serviceId, 'No longer needed');
$client->services->renew($serviceId);
```

### Domains
```php
$client->domains->list();
$client->domains->get($domainId);
$client->domains->whois('example.com');
$client->domains->checkAvailability('example.com');
$client->domains->getNameservers($domainId);
$client->domains->updateNameservers($domainId, ['ns1' => 'ns1.example.com']);
$client->domains->getEppCode($domainId);
```

### DNS Management
```php
// Domain DNS records
$client->dnsManage->getRecords($domainId);
$client->dnsManage->createRecord($domainId, ['name' => 'www', 'type' => 'A', 'content' => '1.2.3.4']);

// Service DNS zones
$client->dns->list();
$client->dns->addZone($serviceId, 'example.com');
```

### SSL Certificates
```php
$client->ssl->list();
$client->ssl->get($certificateId);
$client->ssl->download($certificateId);
```

### Billing
```php
$client->billing->getBalance();
$client->billing->listInvoices();
$client->billing->getInvoice($invoiceId);
$client->billing->applyCredit($invoiceId);
```

### Support
```php
$client->support->listTickets();
$client->support->createTicket(['subject' => 'Help', 'message' => '...', 'department_id' => 1]);
$client->support->getTicket('TKT-001');
$client->support->reply('TKT-001', 'Additional info');
```

### Contacts
```php
$client->contacts->list();
$client->contacts->create(['first_name' => 'John', 'last_name' => 'Doe']);
$client->contacts->update($contactId, ['phone' => '+84901234567']);
$client->contacts->delete($contactId);
```

### Cart
```php
$client->cart->get();
$client->cart->add(1, ['billing_cycle' => 'monthly']);
$client->cart->applyPromo('DISCOUNT20');
$client->cart->checkout(['payment_method' => 'sepay']);
```

### Notifications
```php
$client->notifications->list();
$client->notifications->getPreferences();
$client->notifications->updatePreferences(['email' => true, 'sms' => false]);
```

### Affiliate
```php
$client->affiliate->getDetails();
$client->affiliate->getBalance();
$client->affiliate->listReferrals();
```

### Cloud GPU
```php
$client->cloudGpu->list();
$client->cloudGpu->get($gpuId);
$client->cloudGpu->start($gpuId);
```

### Virtualizor
```php
$client->virtualizor->list();
$client->virtualizor->get($vpsId);
$client->virtualizor->start($vpsId);
```

## Error Handling

```php
use HiTechCloud\SDK\AuthenticationException;
use HiTechCloud\SDK\NotFoundException;
use HiTechCloud\SDK\RateLimitException;
use HiTechCloud\SDK\ValidationException;
use HiTechCloud\SDK\HiTechCloudException;

try {
    $client->domains->get(99999);
} catch (AuthenticationException $e) {
    echo 'Invalid credentials or expired token';
} catch (NotFoundException $e) {
    echo 'Resource not found';
} catch (RateLimitException $e) {
    echo 'Rate limited. Retry after ' . $e->getRetryAfter() . ' seconds';
} catch (ValidationException $e) {
    echo 'Validation error: ' . $e->getMessage();
} catch (HiTechCloudException $e) {
    echo 'API error: ' . $e->getMessage();
}
```

## License

MIT License - see [LICENSE](../../LICENSE) for details.
