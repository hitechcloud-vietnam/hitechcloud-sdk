import 'http_client.dart';

/// Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation
class CephS3Resource {
  final HttpClient httpClient;
  CephS3Resource(this.httpClient);

  /// GET /api/service/{id}/s3 - Get S3 connection info
  Future<Map<String, dynamic>> getConnectionInfo([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/s3', params);
  }

  /// GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key
  Future<Map<String, dynamic>> getCredentials([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/s3/credentials', params);
  }

  /// GET /api/service/{id}/s3/usage - Get S3 usage
  Future<Map<String, dynamic>> getUsage([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/s3/usage', params);
  }

  /// GET /api/service/{id}/s3/metrics - Get S3 metrics
  Future<Map<String, dynamic>> getMetrics([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/s3/metrics', params);
  }

  /// GET /api/service/{id}/s3/buckets - List buckets
  Future<Map<String, dynamic>> listBuckets([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/s3/buckets', params);
  }

  /// POST /api/service/{id}/s3/buckets - Create bucket
  Future<Map<String, dynamic>> createBucket([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/s3/buckets', params);
  }

  /// DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket
  Future<Map<String, dynamic>> deleteBucket([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{id}/s3/buckets/{bucket}', params);
  }

  /// GET /api/service/{id}/s3/subusers - List sub-users
  Future<Map<String, dynamic>> listSubusers([Map<String, dynamic>? params]) async {
    return httpClient.get('/api/service/{id}/s3/subusers', params);
  }

  /// POST /api/service/{id}/s3/subusers - Create sub-user
  Future<Map<String, dynamic>> createSubuser([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/s3/subusers', params);
  }

  /// DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user
  Future<Map<String, dynamic>> deleteSubuser([Map<String, dynamic>? params]) async {
    return httpClient.delete('/api/service/{id}/s3/subusers/{subuser}', params);
  }

  /// POST /api/service/{id}/s3/key - Rotate secret key
  Future<Map<String, dynamic>> rotateSecretKey([Map<String, dynamic>? params]) async {
    return httpClient.post('/api/service/{id}/s3/key', params);
  }

}
