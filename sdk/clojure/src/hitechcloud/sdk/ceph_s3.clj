(ns hitechcloud.sdk.ceph_s3
  (:require [hitechcloud.sdk.http-client :as http]))

;; Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation

(defn get_connection_info "GET /api/service/{id}/s3 - Get S3 connection info" [client & [params]] (http-get client "/api/service/{id}/s3" params))

(defn get_credentials "GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key" [client & [params]] (http-get client "/api/service/{id}/s3/credentials" params))

(defn get_usage "GET /api/service/{id}/s3/usage - Get S3 usage" [client & [params]] (http-get client "/api/service/{id}/s3/usage" params))

(defn get_metrics "GET /api/service/{id}/s3/metrics - Get S3 metrics" [client & [params]] (http-get client "/api/service/{id}/s3/metrics" params))

(defn list_buckets "GET /api/service/{id}/s3/buckets - List buckets" [client & [params]] (http-get client "/api/service/{id}/s3/buckets" params))

(defn create_bucket "POST /api/service/{id}/s3/buckets - Create bucket" [client & [params]] (http-post client "/api/service/{id}/s3/buckets" params))

(defn delete_bucket "DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket" [client & [params]] (http-delete client "/api/service/{id}/s3/buckets/{bucket}" params))

(defn list_subusers "GET /api/service/{id}/s3/subusers - List sub-users" [client & [params]] (http-get client "/api/service/{id}/s3/subusers" params))

(defn create_subuser "POST /api/service/{id}/s3/subusers - Create sub-user" [client & [params]] (http-post client "/api/service/{id}/s3/subusers" params))

(defn delete_subuser "DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user" [client & [params]] (http-delete client "/api/service/{id}/s3/subusers/{subuser}" params))

(defn rotate_secret_key "POST /api/service/{id}/s3/key - Rotate secret key" [client & [params]] (http-post client "/api/service/{id}/s3/key" params))

