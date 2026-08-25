# Php SDK Guide

## Installation

```bash
composer require hitechcloud/sdk
```

## Initialization

```php
<?php
use HiTechCloud\HiTechCloud;

$client = new HiTechCloud('your-api-key');
```

## Basic Usage

```php
// List all services
$services = client->services()->listServices();
foreach ($services['data'] as $svc) {
    echo $svc['id'] . ': ' . $svc['name'] . PHP_EOL;
}

// Get a specific service
$service = client->services()->getService(['id' => 123]);
print_r($service);

// Power operations
client->services()->startService(['id' => 123]);
client->services()->stopService(['id' => 123]);
client->services()->rebootService(['id' => 123]);
```

## Testing

```php
<?php
use PHPUnit\Framework\TestCase;
use HiTechCloud\HiTechCloud;

class HiTechCloudTest extends TestCase {
    public function testClientInit() {
        $client = new HiTechCloud('test-key');
        $this->assertNotNull($client);
    }
}
```

## Environment Variables

| Variable | Description |
|----------|-------------|
| `HITECHCLOUD_API_KEY` | Your API key |
| `HITECHCLOUD_BASE_URL` | Custom base URL (default: `https://docs.hitechcloud.vn`) |

## More Examples

See the [`examples/php/`](../../examples/php/) directory for complete examples.
