package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class CephS3 extends BaseResource {

    public CephS3(HttpClient http) {
        super(http);
    }

    /** Get S3 info */
    public Map<String, Object> s3(int id) throws Exception {
        return http.get(String.format("/api/service/%id/s3", id));
    }

    /** Get credentials */
    public Map<String, Object> credentials(int id) throws Exception {
        return http.get(String.format("/api/service/%id/s3/credentials", id));
    }

    /** Get usage */
    public Map<String, Object> usage(int id) throws Exception {
        return http.get(String.format("/api/service/%id/s3/usage", id));
    }

    /** Get metrics */
    public Map<String, Object> metrics(int id) throws Exception {
        return http.get(String.format("/api/service/%id/s3/metrics", id));
    }

    /** List buckets */
    public Map<String, Object> buckets(int id) throws Exception {
        return http.get(String.format("/api/service/%id/s3/buckets", id));
    }

    /** Create bucket */
    public Map<String, Object> createBucket(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/s3/buckets", id), data);
    }

    /** Delete bucket */
    public Map<String, Object> deleteBucket(int id, String bucket) throws Exception {
        return http.delete(String.format("/api/service/%id/s3/buckets/%bucket", id, bucket));
    }

    /** List subusers */
    public Map<String, Object> subusers(int id) throws Exception {
        return http.get(String.format("/api/service/%id/s3/subusers", id));
    }

    /** Create subuser */
    public Map<String, Object> createSubuser(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/s3/subusers", id), data);
    }

    /** Delete subuser */
    public Map<String, Object> deleteSubuser(int id, String subuser) throws Exception {
        return http.delete(String.format("/api/service/%id/s3/subusers/%subuser", id, subuser));
    }

    /** Rotate key */
    public Map<String, Object> rotateKey(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/s3/key", id), data);
    }

}
