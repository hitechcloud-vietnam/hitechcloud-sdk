#!/usr/bin/env bash
# HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters
SCRIPT_DIR="${BASH_SOURCE[0]%/*}"
source "${SCRIPT_DIR}/http_client.sh"

# GET /api/service/{id}/templates - List templates
list-templates() {
    hc_get "/api/service/{id}/templates" "$@"
}

# POST /api/service/{id}/templates - Save a template
save-template() {
    hc_post "/api/service/{id}/templates" "$@"
}

# GET /api/service/{id}/hitechcloud/mode - Get provisioning mode
get-provisioning-mode() {
    hc_get "/api/service/{id}/hitechcloud/mode" "$@"
}

# GET /api/service/{id}/hitechcloud/examples - Get JSON examples
get-json-examples() {
    hc_get "/api/service/{id}/hitechcloud/examples" "$@"
}

# GET /api/service/{id}/hitechcloud/schema - Get API schema
get-api-schema() {
    hc_get "/api/service/{id}/hitechcloud/schema" "$@"
}

# GET /api/service/{id}/instances - List all GPU instances
list-instances() {
    hc_get "/api/service/{id}/instances" "$@"
}

# POST /api/service/{id}/instances - Create a GPU instance
create-instance() {
    hc_post "/api/service/{id}/instances" "$@"
}

# GET /api/service/{id}/instances/types - List available GPU instance types
list-instance-types() {
    hc_get "/api/service/{id}/instances/types" "$@"
}

# GET /api/service/{id}/instances/{instance_id} - Get instance details
get-instance() {
    hc_get "/api/service/{id}/instances/{instance_id}" "$@"
}

# POST /api/service/{id}/instances/{instance_id}/update - Update instance
update-instance() {
    hc_post "/api/service/{id}/instances/{instance_id}/update" "$@"
}

# POST /api/service/{id}/instances/{instance_id}/restart - Restart instance
restart-instance() {
    hc_post "/api/service/{id}/instances/{instance_id}/restart" "$@"
}

# POST /api/service/{id}/instances/{instance_id}/delete - Delete instance
delete-instance() {
    hc_post "/api/service/{id}/instances/{instance_id}/delete" "$@"
}

# GET /api/service/{id}/instance - Get service instance
get-service-instance() {
    hc_get "/api/service/{id}/instance" "$@"
}

# POST /api/service/{id}/instance/sync - Synchronize service resource
sync-service-instance() {
    hc_post "/api/service/{id}/instance/sync" "$@"
}

# POST /api/service/{id}/instance/restart - Restart service instance
restart-service-instance() {
    hc_post "/api/service/{id}/instance/restart" "$@"
}

# POST /api/service/{id}/instance/update - Update service instance
update-service-instance() {
    hc_post "/api/service/{id}/instance/update" "$@"
}

# GET /api/service/{id}/sshkeys - List SSH keys
list-ssh-keys() {
    hc_get "/api/service/{id}/sshkeys" "$@"
}

# POST /api/service/{id}/sshkeys - Add SSH key
add-ssh-key() {
    hc_post "/api/service/{id}/sshkeys" "$@"
}

# GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details
get-ssh-key() {
    hc_get "/api/service/{id}/sshkeys/{key_id}" "$@"
}

# POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key
delete-ssh-key() {
    hc_post "/api/service/{id}/sshkeys/{key_id}/delete" "$@"
}

# POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key
set-default-ssh-key() {
    hc_post "/api/service/{id}/sshkeys/{key_id}/setdefault" "$@"
}

# GET /api/service/{id}/volumes - List volumes
list-volumes() {
    hc_get "/api/service/{id}/volumes" "$@"
}

# POST /api/service/{id}/volumes - Create a storage volume
create-volume() {
    hc_post "/api/service/{id}/volumes" "$@"
}

# GET /api/service/{id}/volumes/types - List volume types
list-volume-types() {
    hc_get "/api/service/{id}/volumes/types" "$@"
}

# GET /api/service/{id}/volumes/{volume_id} - Get volume details
get-volume() {
    hc_get "/api/service/{id}/volumes/{volume_id}" "$@"
}

# POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume
delete-volume() {
    hc_post "/api/service/{id}/volumes/{volume_id}/delete" "$@"
}

# GET /api/service/{id}/templates/featured - List featured templates
list-featured-templates() {
    hc_get "/api/service/{id}/templates/featured" "$@"
}

# GET /api/service/{id}/templates/{template_id} - Get template details
get-template() {
    hc_get "/api/service/{id}/templates/{template_id}" "$@"
}

# POST /api/service/{id}/templates/{template_id}/update - Update template
update-template() {
    hc_post "/api/service/{id}/templates/{template_id}/update" "$@"
}

# POST /api/service/{id}/templates/{template_id}/delete - Delete template
delete-template() {
    hc_post "/api/service/{id}/templates/{template_id}/delete" "$@"
}

# GET /api/service/{id}/clusters - List GPU clusters
list-clusters() {
    hc_get "/api/service/{id}/clusters" "$@"
}

# POST /api/service/{id}/clusters - Create a GPU cluster
create-cluster() {
    hc_post "/api/service/{id}/clusters" "$@"
}

# GET /api/service/{id}/clusters/types - List available GPU cluster types
list-cluster-types() {
    hc_get "/api/service/{id}/clusters/types" "$@"
}

# GET /api/service/{id}/cluster - Get service cluster
get-service-cluster() {
    hc_get "/api/service/{id}/cluster" "$@"
}

# GET /api/service/{id}/clusters/{cluster_id} - Get cluster details
get-cluster() {
    hc_get "/api/service/{id}/clusters/{cluster_id}" "$@"
}

# POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster
delete-cluster() {
    hc_post "/api/service/{id}/clusters/{cluster_id}/delete" "$@"
}

