# Php Examples

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

## Running

```bash
export HITECHCLOUD_API_KEY=your-api-key
php basic_usage.php
```

## More Examples

- `basic_usage.php` — List, get, and manage services
- `error_handling.php` — Handle API errors gracefully
- `pagination.php` — Paginate through results
