package hitechcloud

import "fmt"

// CephS3Resource handles CephS3 endpoints
type CephS3Resource struct {
	client *HTTPClient
}

// GetConnectionInfo - Get connection info
func (r *CephS3Resource) GetConnectionInfo(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/s3", serviceId), nil)
}

// GetCredentials - Get credentials
func (r *CephS3Resource) GetCredentials(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/s3/credentials", serviceId), nil)
}

// GetUsage - Get usage
func (r *CephS3Resource) GetUsage(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/s3/usage", serviceId), nil)
}

// GetMetrics - Get metrics
func (r *CephS3Resource) GetMetrics(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/s3/metrics", serviceId), nil)
}

// ListBuckets - List buckets
func (r *CephS3Resource) ListBuckets(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/s3/buckets", serviceId), nil)
}

// CreateBucket - Create bucket
func (r *CephS3Resource) CreateBucket(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/s3/buckets", serviceId), data)
}

// DeleteBucket - Delete bucket
func (r *CephS3Resource) DeleteBucket(serviceId int, bucket string )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/s3/buckets/%s", serviceId, bucket))
}

// ListSubusers - List sub-users
func (r *CephS3Resource) ListSubusers(serviceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/service/%d/s3/subusers", serviceId), nil)
}

// CreateSubuser - Create sub-user
func (r *CephS3Resource) CreateSubuser(serviceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/s3/subusers", serviceId), data)
}

// DeleteSubuser - Delete sub-user
func (r *CephS3Resource) DeleteSubuser(serviceId int, subuser string )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/service/%d/s3/subusers/%s", serviceId, subuser))
}

// RotateSecretKey - Rotate secret key
func (r *CephS3Resource) RotateSecretKey(serviceId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/service/%d/s3/key", serviceId), nil)
}
