(** Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation *)

(** GET /api/service/{id}/s3 - Get S3 connection info *)
let get_connection_info client params =
  HttpClient.get client "/api/service/{id}/s3" params

(** GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key *)
let get_credentials client params =
  HttpClient.get client "/api/service/{id}/s3/credentials" params

(** GET /api/service/{id}/s3/usage - Get S3 usage *)
let get_usage client params =
  HttpClient.get client "/api/service/{id}/s3/usage" params

(** GET /api/service/{id}/s3/metrics - Get S3 metrics *)
let get_metrics client params =
  HttpClient.get client "/api/service/{id}/s3/metrics" params

(** GET /api/service/{id}/s3/buckets - List buckets *)
let list_buckets client params =
  HttpClient.get client "/api/service/{id}/s3/buckets" params

(** POST /api/service/{id}/s3/buckets - Create bucket *)
let create_bucket client params =
  HttpClient.post client "/api/service/{id}/s3/buckets" params

(** DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket *)
let delete_bucket client params =
  HttpClient.delete client "/api/service/{id}/s3/buckets/{bucket}" params

(** GET /api/service/{id}/s3/subusers - List sub-users *)
let list_subusers client params =
  HttpClient.get client "/api/service/{id}/s3/subusers" params

(** POST /api/service/{id}/s3/subusers - Create sub-user *)
let create_subuser client params =
  HttpClient.post client "/api/service/{id}/s3/subusers" params

(** DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user *)
let delete_subuser client params =
  HttpClient.delete client "/api/service/{id}/s3/subusers/{subuser}" params

(** POST /api/service/{id}/s3/key - Rotate secret key *)
let rotate_secret_key client params =
  HttpClient.post client "/api/service/{id}/s3/key" params

