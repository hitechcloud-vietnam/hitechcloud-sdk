#include "hitechcloud/ceph_s3.h"
#include <stdlib.h>


/* GET /api/service/{id}/s3 - Get S3 connection info */
char *hc_ceph_s3_get_connection_info(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/s3", NULL);
}

/* GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key */
char *hc_ceph_s3_get_credentials(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/s3/credentials", NULL);
}

/* GET /api/service/{id}/s3/usage - Get S3 usage */
char *hc_ceph_s3_get_usage(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/s3/usage", NULL);
}

/* GET /api/service/{id}/s3/metrics - Get S3 metrics */
char *hc_ceph_s3_get_metrics(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/s3/metrics", NULL);
}

/* GET /api/service/{id}/s3/buckets - List buckets */
char *hc_ceph_s3_list_buckets(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/s3/buckets", NULL);
}

/* POST /api/service/{id}/s3/buckets - Create bucket */
char *hc_ceph_s3_create_bucket(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/s3/buckets", NULL);
}

/* DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket */
char *hc_ceph_s3_delete_bucket(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{id}/s3/buckets/{bucket}", NULL);
}

/* GET /api/service/{id}/s3/subusers - List sub-users */
char *hc_ceph_s3_list_subusers(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/s3/subusers", NULL);
}

/* POST /api/service/{id}/s3/subusers - Create sub-user */
char *hc_ceph_s3_create_subuser(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/s3/subusers", NULL);
}

/* DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user */
char *hc_ceph_s3_delete_subuser(hc_http_client_t *client) {
    return hc_delete(client, "/api/service/{id}/s3/subusers/{subuser}", NULL);
}

/* POST /api/service/{id}/s3/key - Rotate secret key */
char *hc_ceph_s3_rotate_secret_key(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/s3/key", NULL);
}

