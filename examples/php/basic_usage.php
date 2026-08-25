#!/usr/bin/env php
/**
 * Basic usage example for HiTechCloud Php SDK
 * 
 * Set your API key:
 *   export HITECHCLOUD_API_KEY=your-api-key
 */
<?php
use HiTechCloud\HiTechCloud;

$client = new HiTechCloud('your-api-key');

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
