# Ceph S3: S3 connection, credentials, usage, buckets, sub-users, key rotation
struct CephS3Resource
    http::HttpClient
end

# GET /api/service/{id}/s3 - Get S3 connection info
function get_connection_info(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/s3"; params = params)
end

# GET /api/service/{id}/s3/credentials - Get S3 credentials with secret key
function get_credentials(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/s3/credentials"; params = params)
end

# GET /api/service/{id}/s3/usage - Get S3 usage
function get_usage(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/s3/usage"; params = params)
end

# GET /api/service/{id}/s3/metrics - Get S3 metrics
function get_metrics(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/s3/metrics"; params = params)
end

# GET /api/service/{id}/s3/buckets - List buckets
function list_buckets(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/s3/buckets"; params = params)
end

# POST /api/service/{id}/s3/buckets - Create bucket
function create_bucket(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/s3/buckets"; params = params)
end

# DELETE /api/service/{id}/s3/buckets/{bucket} - Delete bucket
function delete_bucket(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{id}/s3/buckets/{bucket}"; params = params)
end

# GET /api/service/{id}/s3/subusers - List sub-users
function list_subusers(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/s3/subusers"; params = params)
end

# POST /api/service/{id}/s3/subusers - Create sub-user
function create_subuser(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/s3/subusers"; params = params)
end

# DELETE /api/service/{id}/s3/subusers/{subuser} - Delete sub-user
function delete_subuser(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_delete(r.http, "/api/service/{id}/s3/subusers/{subuser}"; params = params)
end

# POST /api/service/{id}/s3/key - Rotate secret key
function rotate_secret_key(r::CephS3Resource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/s3/key"; params = params)
end
