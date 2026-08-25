#!/usr/bin/env bash
# Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/s3 - Get S3 connection info
get-connection-info() {
    hc_get "/api/service/{id}/s3" "$@"
}

# GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key
get-credentials() {
    hc_get "/api/service/{id}/s3/credentials" "$@"
}

# GET /api/service/{id}/s3/usage - Get S3 usage
get-usage() {
    hc_get "/api/service/{id}/s3/usage" "$@"
}

# GET /api/service/{id}/s3/metrics - Get S3 metrics
get-metrics() {
    hc_get "/api/service/{id}/s3/metrics" "$@"
}

# GET /api/service/{id}/s3/buckets - List buckets
list-buckets() {
    hc_get "/api/service/{id}/s3/buckets" "$@"
}

# POST /api/service/{id}/s3/buckets - Create bucket
create-bucket() {
    hc_post "/api/service/{id}/s3/buckets" "$@"
}

# DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket
delete-bucket() {
    hc_delete "/api/service/{id}/s3/buckets/{bucket}" "$@"
}

# GET /api/service/{id}/s3/subusers - List sub-users
list-subusers() {
    hc_get "/api/service/{id}/s3/subusers" "$@"
}

# POST /api/service/{id}/s3/subusers - Create sub-user
create-subuser() {
    hc_post "/api/service/{id}/s3/subusers" "$@"
}

# DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user
delete-subuser() {
    hc_delete "/api/service/{id}/s3/subusers/{subuser}" "$@"
}

# POST /api/service/{id}/s3/key - Rotate secret key
rotate-secret-key() {
    hc_post "/api/service/{id}/s3/key" "$@"
}

