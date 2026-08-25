module HiTechCloud
  module Resources
    class AiFactory < Base

        # List templates
        def templates(id)
          @http.get("/api/service/%{id}/templates" % { id: id })
        end

        # Save template
        def save_template(id, data)
          @http.post("/api/service/%{id}/templates" % { id: id }, data)
        end

        # Get provisioning mode
        def provisioning_mode(id)
          @http.get("/api/service/%{id}/hitechcloud/mode" % { id: id })
        end

        # Get examples
        def examples(id)
          @http.get("/api/service/%{id}/hitechcloud/examples" % { id: id })
        end

        # Get schema
        def schema(id)
          @http.get("/api/service/%{id}/hitechcloud/schema" % { id: id })
        end

        # Get featured templates
        def featured_templates(id)
          @http.get("/api/service/%{id}/templates/featured" % { id: id })
        end

        # Get template
        def template(id, template_id)
          @http.get("/api/service/%{id}/templates/%{template_id}" % { id: id, template_id: template_id })
        end

        # Update template
        def update_template(id, template_id, data)
          @http.post("/api/service/%{id}/templates/%{template_id}" % { id: id, template_id: template_id }, data)
        end

        # Delete template
        def delete_template(id, template_id)
          @http.post("/api/service/%{id}/templates/%{template_id}/delete" % { id: id, template_id: template_id })
        end

        # List instances
        def instances(id)
          @http.get("/api/service/%{id}/instances" % { id: id })
        end

        # Create instance
        def create_instance(id, data)
          @http.post("/api/service/%{id}/instances" % { id: id }, data)
        end

        # Get instance types
        def instance_types(id)
          @http.get("/api/service/%{id}/instances/types" % { id: id })
        end

        # Get instance
        def instance(id, instance_id)
          @http.get("/api/service/%{id}/instances/%{instance_id}" % { id: id, instance_id: instance_id })
        end

        # Update instance
        def update_instance(id, instance_id, data)
          @http.post("/api/service/%{id}/instances/%{instance_id}/update" % { id: id, instance_id: instance_id }, data)
        end

        # Restart instance
        def restart_instance(id, instance_id)
          @http.post("/api/service/%{id}/instances/%{instance_id}/restart" % { id: id, instance_id: instance_id })
        end

        # Delete instance
        def delete_instance(id, instance_id)
          @http.post("/api/service/%{id}/instances/%{instance_id}/delete" % { id: id, instance_id: instance_id })
        end

        # Get service instance
        def service_instance(id)
          @http.get("/api/service/%{id}/instance" % { id: id })
        end

        # Sync instance
        def sync_instance(id)
          @http.post("/api/service/%{id}/instance/sync" % { id: id })
        end

        # Restart service
        def restart_service(id)
          @http.post("/api/service/%{id}/instance/restart" % { id: id })
        end

        # Update service
        def update_service(id, data)
          @http.post("/api/service/%{id}/instance/update" % { id: id }, data)
        end

        # List SSH keys
        def ssh_keys(id)
          @http.get("/api/service/%{id}/sshkeys" % { id: id })
        end

        # Create SSH key
        def create_ssh_key(id, data)
          @http.post("/api/service/%{id}/sshkeys" % { id: id }, data)
        end

        # Get SSH key
        def ssh_key(id, key_id)
          @http.get("/api/service/%{id}/sshkeys/%{key_id}" % { id: id, key_id: key_id })
        end

        # Delete SSH key
        def delete_ssh_key(id, key_id)
          @http.post("/api/service/%{id}/sshkeys/%{key_id}/delete" % { id: id, key_id: key_id })
        end

        # Set default SSH key
        def set_default_ssh_key(id, key_id)
          @http.post("/api/service/%{id}/sshkeys/%{key_id}/setdefault" % { id: id, key_id: key_id })
        end

        # List volumes
        def volumes(id)
          @http.get("/api/service/%{id}/volumes" % { id: id })
        end

        # Create volume
        def create_volume(id, data)
          @http.post("/api/service/%{id}/volumes" % { id: id }, data)
        end

        # Get volume types
        def volume_types(id)
          @http.get("/api/service/%{id}/volumes/types" % { id: id })
        end

        # Get volume
        def volume(id, volume_id)
          @http.get("/api/service/%{id}/volumes/%{volume_id}" % { id: id, volume_id: volume_id })
        end

        # Delete volume
        def delete_volume(id, volume_id)
          @http.post("/api/service/%{id}/volumes/%{volume_id}/delete" % { id: id, volume_id: volume_id })
        end

        # List clusters
        def clusters(id)
          @http.get("/api/service/%{id}/clusters" % { id: id })
        end

        # Create cluster
        def create_cluster(id, data)
          @http.post("/api/service/%{id}/clusters" % { id: id }, data)
        end

        # Get cluster types
        def cluster_types(id)
          @http.get("/api/service/%{id}/clusters/types" % { id: id })
        end

        # Get service cluster
        def service_cluster(id)
          @http.get("/api/service/%{id}/cluster" % { id: id })
        end

        # Get cluster
        def cluster(id, cluster_id)
          @http.get("/api/service/%{id}/clusters/%{cluster_id}" % { id: id, cluster_id: cluster_id })
        end

        # Delete cluster
        def delete_cluster(id, cluster_id)
          @http.post("/api/service/%{id}/clusters/%{cluster_id}/delete" % { id: id, cluster_id: cluster_id })
      end
    end
  end
end
