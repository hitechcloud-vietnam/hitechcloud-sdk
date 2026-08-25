# HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters
struct AiFactoryResource
    http::HttpClient
end

# GET /api/service/{id}/templates - List templates
function list_templates(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/templates"; params = params)
end

# POST /api/service/{id}/templates - Save a template
function save_template(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/templates"; params = params)
end

# GET /api/service/{id}/hitechcloud/mode - Get provisioning mode
function get_provisioning_mode(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/hitechcloud/mode"; params = params)
end

# GET /api/service/{id}/hitechcloud/examples - Get JSON examples
function get_json_examples(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/hitechcloud/examples"; params = params)
end

# GET /api/service/{id}/hitechcloud/schema - Get API schema
function get_api_schema(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/hitechcloud/schema"; params = params)
end

# GET /api/service/{id}/instances - List all GPU instances
function list_instances(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/instances"; params = params)
end

# POST /api/service/{id}/instances - Create a GPU instance
function create_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/instances"; params = params)
end

# GET /api/service/{id}/instances/types - List available GPU instance types
function list_instance_types(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/instances/types"; params = params)
end

# GET /api/service/{id}/instances/{instance_id} - Get instance details
function get_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/instances/{instance_id}"; params = params)
end

# POST /api/service/{id}/instances/{instance_id}/update - Update instance
function update_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/instances/{instance_id}/update"; params = params)
end

# POST /api/service/{id}/instances/{instance_id}/restart - Restart instance
function restart_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/instances/{instance_id}/restart"; params = params)
end

# POST /api/service/{id}/instances/{instance_id}/delete - Delete instance
function delete_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/instances/{instance_id}/delete"; params = params)
end

# GET /api/service/{id}/instance - Get service instance
function get_service_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/instance"; params = params)
end

# POST /api/service/{id}/instance/sync - Synchronize service resource
function sync_service_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/instance/sync"; params = params)
end

# POST /api/service/{id}/instance/restart - Restart service instance
function restart_service_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/instance/restart"; params = params)
end

# POST /api/service/{id}/instance/update - Update service instance
function update_service_instance(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/instance/update"; params = params)
end

# GET /api/service/{id}/sshkeys - List SSH keys
function list_ssh_keys(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/sshkeys"; params = params)
end

# POST /api/service/{id}/sshkeys - Add SSH key
function add_ssh_key(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/sshkeys"; params = params)
end

# GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details
function get_ssh_key(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/sshkeys/{key_id}"; params = params)
end

# POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key
function delete_ssh_key(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/sshkeys/{key_id}/delete"; params = params)
end

# POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key
function set_default_ssh_key(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/sshkeys/{key_id}/setdefault"; params = params)
end

# GET /api/service/{id}/volumes - List volumes
function list_volumes(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/volumes"; params = params)
end

# POST /api/service/{id}/volumes - Create a storage volume
function create_volume(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/volumes"; params = params)
end

# GET /api/service/{id}/volumes/types - List volume types
function list_volume_types(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/volumes/types"; params = params)
end

# GET /api/service/{id}/volumes/{volume_id} - Get volume details
function get_volume(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/volumes/{volume_id}"; params = params)
end

# POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume
function delete_volume(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/volumes/{volume_id}/delete"; params = params)
end

# GET /api/service/{id}/templates/featured - List featured templates
function list_featured_templates(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/templates/featured"; params = params)
end

# GET /api/service/{id}/templates/{template_id} - Get template details
function get_template(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/templates/{template_id}"; params = params)
end

# POST /api/service/{id}/templates/{template_id}/update - Update template
function update_template(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/templates/{template_id}/update"; params = params)
end

# POST /api/service/{id}/templates/{template_id}/delete - Delete template
function delete_template(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/templates/{template_id}/delete"; params = params)
end

# GET /api/service/{id}/clusters - List GPU clusters
function list_clusters(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/clusters"; params = params)
end

# POST /api/service/{id}/clusters - Create a GPU cluster
function create_cluster(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/clusters"; params = params)
end

# GET /api/service/{id}/clusters/types - List available GPU cluster types
function list_cluster_types(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/clusters/types"; params = params)
end

# GET /api/service/{id}/cluster - Get service cluster
function get_service_cluster(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/cluster"; params = params)
end

# GET /api/service/{id}/clusters/{cluster_id} - Get cluster details
function get_cluster(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_get(r.http, "/api/service/{id}/clusters/{cluster_id}"; params = params)
end

# POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster
function delete_cluster(r::AiFactoryResource; kwargs...)
    params = Dict(kwargs)
    http_post(r.http, "/api/service/{id}/clusters/{cluster_id}/delete"; params = params)
end
