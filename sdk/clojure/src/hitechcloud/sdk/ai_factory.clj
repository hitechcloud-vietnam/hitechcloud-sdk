(ns hitechcloud.sdk.ai_factory
  (:require [hitechcloud.sdk.http-client :as http]))

;; HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters

(defn list_templates "GET /api/service/{id}/templates - List templates" [client & [params]] (http-get client "/api/service/{id}/templates" params))

(defn save_template "POST /api/service/{id}/templates - Save a template" [client & [params]] (http-post client "/api/service/{id}/templates" params))

(defn get_provisioning_mode "GET /api/service/{id}/hitechcloud/mode - Get provisioning mode" [client & [params]] (http-get client "/api/service/{id}/hitechcloud/mode" params))

(defn get_json_examples "GET /api/service/{id}/hitechcloud/examples - Get JSON examples" [client & [params]] (http-get client "/api/service/{id}/hitechcloud/examples" params))

(defn get_api_schema "GET /api/service/{id}/hitechcloud/schema - Get API schema" [client & [params]] (http-get client "/api/service/{id}/hitechcloud/schema" params))

(defn list_instances "GET /api/service/{id}/instances - List all GPU instances" [client & [params]] (http-get client "/api/service/{id}/instances" params))

(defn create_instance "POST /api/service/{id}/instances - Create a GPU instance" [client & [params]] (http-post client "/api/service/{id}/instances" params))

(defn list_instance_types "GET /api/service/{id}/instances/types - List available GPU instance types" [client & [params]] (http-get client "/api/service/{id}/instances/types" params))

(defn get_instance "GET /api/service/{id}/instances/{instance_id} - Get instance details" [client & [params]] (http-get client "/api/service/{id}/instances/{instance_id}" params))

(defn update_instance "POST /api/service/{id}/instances/{instance_id}/update - Update instance" [client & [params]] (http-post client "/api/service/{id}/instances/{instance_id}/update" params))

(defn restart_instance "POST /api/service/{id}/instances/{instance_id}/restart - Restart instance" [client & [params]] (http-post client "/api/service/{id}/instances/{instance_id}/restart" params))

(defn delete_instance "POST /api/service/{id}/instances/{instance_id}/delete - Delete instance" [client & [params]] (http-post client "/api/service/{id}/instances/{instance_id}/delete" params))

(defn get_service_instance "GET /api/service/{id}/instance - Get service instance" [client & [params]] (http-get client "/api/service/{id}/instance" params))

(defn sync_service_instance "POST /api/service/{id}/instance/sync - Synchronize service resource" [client & [params]] (http-post client "/api/service/{id}/instance/sync" params))

(defn restart_service_instance "POST /api/service/{id}/instance/restart - Restart service instance" [client & [params]] (http-post client "/api/service/{id}/instance/restart" params))

(defn update_service_instance "POST /api/service/{id}/instance/update - Update service instance" [client & [params]] (http-post client "/api/service/{id}/instance/update" params))

(defn list_ssh_keys "GET /api/service/{id}/sshkeys - List SSH keys" [client & [params]] (http-get client "/api/service/{id}/sshkeys" params))

(defn add_ssh_key "POST /api/service/{id}/sshkeys - Add SSH key" [client & [params]] (http-post client "/api/service/{id}/sshkeys" params))

(defn get_ssh_key "GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details" [client & [params]] (http-get client "/api/service/{id}/sshkeys/{key_id}" params))

(defn delete_ssh_key "POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key" [client & [params]] (http-post client "/api/service/{id}/sshkeys/{key_id}/delete" params))

(defn set_default_ssh_key "POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key" [client & [params]] (http-post client "/api/service/{id}/sshkeys/{key_id}/setdefault" params))

(defn list_volumes "GET /api/service/{id}/volumes - List volumes" [client & [params]] (http-get client "/api/service/{id}/volumes" params))

(defn create_volume "POST /api/service/{id}/volumes - Create a storage volume" [client & [params]] (http-post client "/api/service/{id}/volumes" params))

(defn list_volume_types "GET /api/service/{id}/volumes/types - List volume types" [client & [params]] (http-get client "/api/service/{id}/volumes/types" params))

(defn get_volume "GET /api/service/{id}/volumes/{volume_id} - Get volume details" [client & [params]] (http-get client "/api/service/{id}/volumes/{volume_id}" params))

(defn delete_volume "POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume" [client & [params]] (http-post client "/api/service/{id}/volumes/{volume_id}/delete" params))

(defn list_featured_templates "GET /api/service/{id}/templates/featured - List featured templates" [client & [params]] (http-get client "/api/service/{id}/templates/featured" params))

(defn get_template "GET /api/service/{id}/templates/{template_id} - Get template details" [client & [params]] (http-get client "/api/service/{id}/templates/{template_id}" params))

(defn update_template "POST /api/service/{id}/templates/{template_id}/update - Update template" [client & [params]] (http-post client "/api/service/{id}/templates/{template_id}/update" params))

(defn delete_template "POST /api/service/{id}/templates/{template_id}/delete - Delete template" [client & [params]] (http-post client "/api/service/{id}/templates/{template_id}/delete" params))

(defn list_clusters "GET /api/service/{id}/clusters - List GPU clusters" [client & [params]] (http-get client "/api/service/{id}/clusters" params))

(defn create_cluster "POST /api/service/{id}/clusters - Create a GPU cluster" [client & [params]] (http-post client "/api/service/{id}/clusters" params))

(defn list_cluster_types "GET /api/service/{id}/clusters/types - List available GPU cluster types" [client & [params]] (http-get client "/api/service/{id}/clusters/types" params))

(defn get_service_cluster "GET /api/service/{id}/cluster - Get service cluster" [client & [params]] (http-get client "/api/service/{id}/cluster" params))

(defn get_cluster "GET /api/service/{id}/clusters/{cluster_id} - Get cluster details" [client & [params]] (http-get client "/api/service/{id}/clusters/{cluster_id}" params))

(defn delete_cluster "POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster" [client & [params]] (http-post client "/api/service/{id}/clusters/{cluster_id}/delete" params))

