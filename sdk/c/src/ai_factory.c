#include "hitechcloud/ai_factory.h"
#include <stdlib.h>


/* GET /api/service/{id}/templates - List templates */
char *hc_ai_factory_list_templates(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/templates", NULL);
}

/* POST /api/service/{id}/templates - Save a template */
char *hc_ai_factory_save_template(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/templates", NULL);
}

/* GET /api/service/{id}/hitechcloud/mode - Get provisioning mode */
char *hc_ai_factory_get_provisioning_mode(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/hitechcloud/mode", NULL);
}

/* GET /api/service/{id}/hitechcloud/examples - Get JSON examples */
char *hc_ai_factory_get_json_examples(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/hitechcloud/examples", NULL);
}

/* GET /api/service/{id}/hitechcloud/schema - Get API schema */
char *hc_ai_factory_get_api_schema(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/hitechcloud/schema", NULL);
}

/* GET /api/service/{id}/instances - List all GPU instances */
char *hc_ai_factory_list_instances(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/instances", NULL);
}

/* POST /api/service/{id}/instances - Create a GPU instance */
char *hc_ai_factory_create_instance(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/instances", NULL);
}

/* GET /api/service/{id}/instances/types - List available GPU instance types */
char *hc_ai_factory_list_instance_types(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/instances/types", NULL);
}

/* GET /api/service/{id}/instances/{instance_id} - Get instance details */
char *hc_ai_factory_get_instance(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/instances/{instance_id}", NULL);
}

/* POST /api/service/{id}/instances/{instance_id}/update - Update instance */
char *hc_ai_factory_update_instance(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/instances/{instance_id}/update", NULL);
}

/* POST /api/service/{id}/instances/{instance_id}/restart - Restart instance */
char *hc_ai_factory_restart_instance(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/instances/{instance_id}/restart", NULL);
}

/* POST /api/service/{id}/instances/{instance_id}/delete - Delete instance */
char *hc_ai_factory_delete_instance(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/instances/{instance_id}/delete", NULL);
}

/* GET /api/service/{id}/instance - Get service instance */
char *hc_ai_factory_get_service_instance(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/instance", NULL);
}

/* POST /api/service/{id}/instance/sync - Synchronize service resource */
char *hc_ai_factory_sync_service_instance(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/instance/sync", NULL);
}

/* POST /api/service/{id}/instance/restart - Restart service instance */
char *hc_ai_factory_restart_service_instance(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/instance/restart", NULL);
}

/* POST /api/service/{id}/instance/update - Update service instance */
char *hc_ai_factory_update_service_instance(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/instance/update", NULL);
}

/* GET /api/service/{id}/sshkeys - List SSH keys */
char *hc_ai_factory_list_ssh_keys(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/sshkeys", NULL);
}

/* POST /api/service/{id}/sshkeys - Add SSH key */
char *hc_ai_factory_add_ssh_key(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/sshkeys", NULL);
}

/* GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details */
char *hc_ai_factory_get_ssh_key(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/sshkeys/{key_id}", NULL);
}

/* POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key */
char *hc_ai_factory_delete_ssh_key(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/sshkeys/{key_id}/delete", NULL);
}

/* POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key */
char *hc_ai_factory_set_default_ssh_key(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/sshkeys/{key_id}/setdefault", NULL);
}

/* GET /api/service/{id}/volumes - List volumes */
char *hc_ai_factory_list_volumes(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/volumes", NULL);
}

/* POST /api/service/{id}/volumes - Create a storage volume */
char *hc_ai_factory_create_volume(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/volumes", NULL);
}

/* GET /api/service/{id}/volumes/types - List volume types */
char *hc_ai_factory_list_volume_types(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/volumes/types", NULL);
}

/* GET /api/service/{id}/volumes/{volume_id} - Get volume details */
char *hc_ai_factory_get_volume(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/volumes/{volume_id}", NULL);
}

/* POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume */
char *hc_ai_factory_delete_volume(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/volumes/{volume_id}/delete", NULL);
}

/* GET /api/service/{id}/templates/featured - List featured templates */
char *hc_ai_factory_list_featured_templates(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/templates/featured", NULL);
}

/* GET /api/service/{id}/templates/{template_id} - Get template details */
char *hc_ai_factory_get_template(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/templates/{template_id}", NULL);
}

/* POST /api/service/{id}/templates/{template_id}/update - Update template */
char *hc_ai_factory_update_template(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/templates/{template_id}/update", NULL);
}

/* POST /api/service/{id}/templates/{template_id}/delete - Delete template */
char *hc_ai_factory_delete_template(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/templates/{template_id}/delete", NULL);
}

/* GET /api/service/{id}/clusters - List GPU clusters */
char *hc_ai_factory_list_clusters(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/clusters", NULL);
}

/* POST /api/service/{id}/clusters - Create a GPU cluster */
char *hc_ai_factory_create_cluster(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/clusters", NULL);
}

/* GET /api/service/{id}/clusters/types - List available GPU cluster types */
char *hc_ai_factory_list_cluster_types(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/clusters/types", NULL);
}

/* GET /api/service/{id}/cluster - Get service cluster */
char *hc_ai_factory_get_service_cluster(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/cluster", NULL);
}

/* GET /api/service/{id}/clusters/{cluster_id} - Get cluster details */
char *hc_ai_factory_get_cluster(hc_http_client_t *client) {
    return hc_get(client, "/api/service/{id}/clusters/{cluster_id}", NULL);
}

/* POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster */
char *hc_ai_factory_delete_cluster(hc_http_client_t *client) {
    return hc_post(client, "/api/service/{id}/clusters/{cluster_id}/delete", NULL);
}

