#ifndef HITECHCLOUD_AI_FACTORY_H
#define HITECHCLOUD_AI_FACTORY_H

#include "http_client.h"

/* HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters */
char *hc_ai_factory_list_templates(hc_http_client_t *client);
char *hc_ai_factory_save_template(hc_http_client_t *client);
char *hc_ai_factory_get_provisioning_mode(hc_http_client_t *client);
char *hc_ai_factory_get_json_examples(hc_http_client_t *client);
char *hc_ai_factory_get_api_schema(hc_http_client_t *client);
char *hc_ai_factory_list_instances(hc_http_client_t *client);
char *hc_ai_factory_create_instance(hc_http_client_t *client);
char *hc_ai_factory_list_instance_types(hc_http_client_t *client);
char *hc_ai_factory_get_instance(hc_http_client_t *client);
char *hc_ai_factory_update_instance(hc_http_client_t *client);
char *hc_ai_factory_restart_instance(hc_http_client_t *client);
char *hc_ai_factory_delete_instance(hc_http_client_t *client);
char *hc_ai_factory_get_service_instance(hc_http_client_t *client);
char *hc_ai_factory_sync_service_instance(hc_http_client_t *client);
char *hc_ai_factory_restart_service_instance(hc_http_client_t *client);
char *hc_ai_factory_update_service_instance(hc_http_client_t *client);
char *hc_ai_factory_list_ssh_keys(hc_http_client_t *client);
char *hc_ai_factory_add_ssh_key(hc_http_client_t *client);
char *hc_ai_factory_get_ssh_key(hc_http_client_t *client);
char *hc_ai_factory_delete_ssh_key(hc_http_client_t *client);
char *hc_ai_factory_set_default_ssh_key(hc_http_client_t *client);
char *hc_ai_factory_list_volumes(hc_http_client_t *client);
char *hc_ai_factory_create_volume(hc_http_client_t *client);
char *hc_ai_factory_list_volume_types(hc_http_client_t *client);
char *hc_ai_factory_get_volume(hc_http_client_t *client);
char *hc_ai_factory_delete_volume(hc_http_client_t *client);
char *hc_ai_factory_list_featured_templates(hc_http_client_t *client);
char *hc_ai_factory_get_template(hc_http_client_t *client);
char *hc_ai_factory_update_template(hc_http_client_t *client);
char *hc_ai_factory_delete_template(hc_http_client_t *client);
char *hc_ai_factory_list_clusters(hc_http_client_t *client);
char *hc_ai_factory_create_cluster(hc_http_client_t *client);
char *hc_ai_factory_list_cluster_types(hc_http_client_t *client);
char *hc_ai_factory_get_service_cluster(hc_http_client_t *client);
char *hc_ai_factory_get_cluster(hc_http_client_t *client);
char *hc_ai_factory_delete_cluster(hc_http_client_t *client);

#endif
