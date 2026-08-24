<?php

namespace HiTechCloud\SDK\Resources;

class CephS3 extends BaseResource
{
    /**
     * Get connection info
     */
    public function getConnectionInfo(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/s3');
    }

    /**
     * Get credentials
     */
    public function getCredentials(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/s3/credentials');
    }

    /**
     * Get usage
     */
    public function getUsage(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/s3/usage');
    }

    /**
     * Get metrics
     */
    public function getMetrics(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/s3/metrics');
    }

    /**
     * List buckets
     */
    public function listBuckets(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/s3/buckets');
    }

    /**
     * Create bucket
     */
    public function createBucket(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/s3/buckets', $data);
    }

    /**
     * Delete bucket
     */
    public function deleteBucket(int $serviceId, string $bucket): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/s3/buckets/' . $bucket);
    }

    /**
     * List sub-users
     */
    public function listSubusers(int $serviceId): array
    {
        return $this->http->get('/api/service/' . $serviceId . '/s3/subusers');
    }

    /**
     * Create sub-user
     */
    public function createSubuser(int $serviceId, array $data): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/s3/subusers', $data);
    }

    /**
     * Delete sub-user
     */
    public function deleteSubuser(int $serviceId, string $subuser): array
    {
        return $this->http->delete('/api/service/' . $serviceId . '/s3/subusers/' . $subuser);
    }

    /**
     * Rotate secret key
     */
    public function rotateSecretKey(int $serviceId): array
    {
        return $this->http->post('/api/service/' . $serviceId . '/s3/key');
    }

}
