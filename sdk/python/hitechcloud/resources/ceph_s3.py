"""Ceph S3 resource (11 endpoints)"""

from .base import BaseResource

class CephS3Resource(BaseResource):
    """Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation"""

    def get_connection_info(self, service_id: int) -> dict:
        """GET /api/service/{id}/s3 - Get S3 connection info"""
        return self._http.get(f"/api/service/{service_id}/s3")

    def get_credentials(self, service_id: int) -> dict:
        """GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key"""
        return self._http.get(f"/api/service/{service_id}/s3/credentials")

    def get_usage(self, service_id: int) -> dict:
        """GET /api/service/{id}/s3/usage - Get S3 usage"""
        return self._http.get(f"/api/service/{service_id}/s3/usage")

    def get_metrics(self, service_id: int) -> dict:
        """GET /api/service/{id}/s3/metrics - Get S3 metrics"""
        return self._http.get(f"/api/service/{service_id}/s3/metrics")

    def list_buckets(self, service_id: int) -> dict:
        """GET /api/service/{id}/s3/buckets - List buckets"""
        return self._http.get(f"/api/service/{service_id}/s3/buckets")

    def create_bucket(self, service_id: int, bucket: str) -> dict:
        """POST /api/service/{id}/s3/buckets - Create bucket"""
        return self._http.post(f"/api/service/{service_id}/s3/buckets", {"bucket": bucket})

    def delete_bucket(self, service_id: int, bucket: str) -> dict:
        """DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket"""
        return self._http.delete(f"/api/service/{service_id}/s3/buckets/{bucket}")

    def list_subusers(self, service_id: int) -> dict:
        """GET /api/service/{id}/s3/subusers - List sub-users"""
        return self._http.get(f"/api/service/{service_id}/s3/subusers")

    def create_subuser(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/s3/subusers - Create sub-user"""
        return self._http.post(f"/api/service/{service_id}/s3/subusers", kwargs)

    def delete_subuser(self, service_id: int, subuser: str) -> dict:
        """DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user"""
        return self._http.delete(f"/api/service/{service_id}/s3/subusers/{subuser}")

    def rotate_secret_key(self, service_id: int) -> dict:
        """POST /api/service/{id}/s3/key - Rotate secret key"""
        return self._http.post(f"/api/service/{service_id}/s3/key")
