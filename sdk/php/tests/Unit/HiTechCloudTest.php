<?php

namespace HiTechCloud\SDK\Tests;

use PHPUnit\Framework\TestCase;
use HiTechCloud\SDK\HiTechCloud;
use HiTechCloud\SDK\Exceptions\HiTechCloudException;
use HiTechCloud\SDK\Exceptions\AuthenticationException;
use HiTechCloud\SDK\Exceptions\NotFoundException;

class HiTechCloudTest extends TestCase
{
    public function testClientCreation(): void
    {
        $client = new HiTechCloud(HiTechCloud::PRODUCTION_URL, null, null, 'test_token');
        $this->assertInstanceOf(HiTechCloud::class, $client);
    }

    public function testClientWithCustomUrl(): void
    {
        $client = new HiTechCloud('https://custom.api.com', null, null, 'test_token');
        $this->assertInstanceOf(HiTechCloud::class, $client);
    }

    public function testClientHasAllResources(): void
    {
        $client = new HiTechCloud(HiTechCloud::PRODUCTION_URL, null, null, 'test_token');
        $resources = [
            'auth', 'users', 'services', 'domains', 'dnsManage', 'dns',
            'ssl', 'billing', 'support', 'contacts', 'cart', 'notifications',
            'affiliate', 'cloudGpu', 'virtualizor', 'cloudService',
            'networkServices', 'serviceStatus', 'bareMetal', 'collocation',
            'vcloudstack', 'hosting', 'locationV2', 'cloudInstance',
            'cloudVm', 'affiliatesAdvanced', 'aiFactory', 'passkeyV2',
            'emailMfaV2', 'vneidekyc', 'willExpired', 'urlShortener',
            'proxmoxBackup', 'cephS3', 'pmg', 'proxmox', 'ipam', 'partner',
        ];
        foreach ($resources as $resource) {
            $this->assertNotNull($client->$resource, "Resource $resource should exist");
        }
    }

    public function testExceptionHierarchy(): void
    {
        $this->assertTrue(is_subclass_of(AuthenticationException::class, HiTechCloudException::class));
        $this->assertTrue(is_subclass_of(NotFoundException::class, HiTechCloudException::class));
    }
}
