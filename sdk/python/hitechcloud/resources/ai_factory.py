"""HiTechCloud AI Factory resource (36 endpoints)"""

from .base import BaseResource

class AiFactoryResource(BaseResource):
    """HiTechCloud AI Factory: templates, instances, SSH keys, volumes, clusters"""

    # --- Templates ---
    def list_templates(self, service_id: int) -> dict:
        """GET /api/service/{id}/templates - List templates"""
        return self._http.get(f"/api/service/{service_id}/templates")

    def save_template(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/templates - Save a template"""
        return self._http.post(f"/api/service/{service_id}/templates", kwargs)

    def get_provisioning_mode(self, service_id: int) -> dict:
        """GET /api/service/{id}/hitechcloud/mode - Get provisioning mode"""
        return self._http.get(f"/api/service/{service_id}/hitechcloud/mode")

    def get_json_examples(self, service_id: int) -> dict:
        """GET /api/service/{id}/hitechcloud/examples - Get JSON examples"""
        return self._http.get(f"/api/service/{service_id}/hitechcloud/examples")

    def get_api_schema(self, service_id: int) -> dict:
        """GET /api/service/{id}/hitechcloud/schema - Get API schema"""
        return self._http.get(f"/api/service/{service_id}/hitechcloud/schema")

    # --- Instances ---
    def list_instances(self, service_id: int) -> dict:
        """GET /api/service/{id}/instances - List all GPU instances"""
        return self._http.get(f"/api/service/{service_id}/instances")

    def create_instance(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/instances - Create a GPU instance"""
        return self._http.post(f"/api/service/{service_id}/instances", kwargs)

    def list_instance_types(self, service_id: int) -> dict:
        """GET /api/service/{id}/instances/types - List available GPU instance types"""
        return self._http.get(f"/api/service/{service_id}/instances/types")

    def get_instance(self, service_id: int, instance_id: str) -> dict:
        """GET /api/service/{id}/instances/{instance_id} - Get instance details"""
        return self._http.get(f"/api/service/{service_id}/instances/{instance_id}")

    def update_instance(self, service_id: int, instance_id: str, **kwargs) -> dict:
        """POST /api/service/{id}/instances/{instance_id}/update - Update instance"""
        return self._http.post(f"/api/service/{service_id}/instances/{instance_id}/update", kwargs)

    def restart_instance(self, service_id: int, instance_id: str) -> dict:
        """POST /api/service/{id}/instances/{instance_id}/restart - Restart instance"""
        return self._http.post(f"/api/service/{service_id}/instances/{instance_id}/restart")

    def delete_instance(self, service_id: int, instance_id: str) -> dict:
        """POST /api/service/{id}/instances/{instance_id}/delete - Delete instance"""
        return self._http.post(f"/api/service/{service_id}/instances/{instance_id}/delete")

    # --- Service Instance ---
    def get_service_instance(self, service_id: int) -> dict:
        """GET /api/service/{id}/instance - Get service instance"""
        return self._http.get(f"/api/service/{service_id}/instance")

    def sync_service_instance(self, service_id: int) -> dict:
        """POST /api/service/{id}/instance/sync - Synchronize service resource"""
        return self._http.post(f"/api/service/{service_id}/instance/sync")

    def restart_service_instance(self, service_id: int) -> dict:
        """POST /api/service/{id}/instance/restart - Restart service instance"""
        return self._http.post(f"/api/service/{service_id}/instance/restart")

    def update_service_instance(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/instance/update - Update service instance"""
        return self._http.post(f"/api/service/{service_id}/instance/update", kwargs)

    # --- SSH Keys ---
    def list_ssh_keys(self, service_id: int) -> dict:
        """GET /api/service/{id}/sshkeys - List SSH keys"""
        return self._http.get(f"/api/service/{service_id}/sshkeys")

    def add_ssh_key(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/sshkeys - Add SSH key"""
        return self._http.post(f"/api/service/{service_id}/sshkeys", kwargs)

    def get_ssh_key(self, service_id: int, key_id: str) -> dict:
        """GET /api/service/{id}/sshkeys/{key_id} - Get SSH key details"""
        return self._http.get(f"/api/service/{service_id}/sshkeys/{key_id}")

    def delete_ssh_key(self, service_id: int, key_id: str) -> dict:
        """POST /api/service/{id}/sshkeys/{key_id}/delete - Delete SSH key"""
        return self._http.post(f"/api/service/{service_id}/sshkeys/{key_id}/delete")

    def set_default_ssh_key(self, service_id: int, key_id: str) -> dict:
        """POST /api/service/{id}/sshkeys/{key_id}/setdefault - Set default SSH key"""
        return self._http.post(f"/api/service/{service_id}/sshkeys/{key_id}/setdefault")

    # --- Volumes ---
    def list_volumes(self, service_id: int) -> dict:
        """GET /api/service/{id}/volumes - List volumes"""
        return self._http.get(f"/api/service/{service_id}/volumes")

    def create_volume(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/volumes - Create a storage volume"""
        return self._http.post(f"/api/service/{service_id}/volumes", kwargs)

    def list_volume_types(self, service_id: int) -> dict:
        """GET /api/service/{id}/volumes/types - List volume types"""
        return self._http.get(f"/api/service/{service_id}/volumes/types")

    def get_volume(self, service_id: int, volume_id: str) -> dict:
        """GET /api/service/{id}/volumes/{volume_id} - Get volume details"""
        return self._http.get(f"/api/service/{service_id}/volumes/{volume_id}")

    def delete_volume(self, service_id: int, volume_id: str) -> dict:
        """POST /api/service/{id}/volumes/{volume_id}/delete - Delete volume"""
        return self._http.post(f"/api/service/{service_id}/volumes/{volume_id}/delete")

    # --- Featured Templates ---
    def list_featured_templates(self, service_id: int) -> dict:
        """GET /api/service/{id}/templates/featured - List featured templates"""
        return self._http.get(f"/api/service/{service_id}/templates/featured")

    def get_template(self, service_id: int, template_id: str) -> dict:
        """GET /api/service/{id}/templates/{template_id} - Get template details"""
        return self._http.get(f"/api/service/{service_id}/templates/{template_id}")

    def update_template(self, service_id: int, template_id: str, **kwargs) -> dict:
        """POST /api/service/{id}/templates/{template_id}/update - Update template"""
        return self._http.post(f"/api/service/{service_id}/templates/{template_id}/update", kwargs)

    def delete_template(self, service_id: int, template_id: str) -> dict:
        """POST /api/service/{id}/templates/{template_id}/delete - Delete template"""
        return self._http.post(f"/api/service/{service_id}/templates/{template_id}/delete")

    # --- Clusters ---
    def list_clusters(self, service_id: int) -> dict:
        """GET /api/service/{id}/clusters - List GPU clusters"""
        return self._http.get(f"/api/service/{service_id}/clusters")

    def create_cluster(self, service_id: int, **kwargs) -> dict:
        """POST /api/service/{id}/clusters - Create a GPU cluster"""
        return self._http.post(f"/api/service/{service_id}/clusters", kwargs)

    def list_cluster_types(self, service_id: int) -> dict:
        """GET /api/service/{id}/clusters/types - List available GPU cluster types"""
        return self._http.get(f"/api/service/{service_id}/clusters/types")

    def get_service_cluster(self, service_id: int) -> dict:
        """GET /api/service/{id}/cluster - Get service cluster"""
        return self._http.get(f"/api/service/{service_id}/cluster")

    def get_cluster(self, service_id: int, cluster_id: str) -> dict:
        """GET /api/service/{id}/clusters/{cluster_id} - Get cluster details"""
        return self._http.get(f"/api/service/{service_id}/clusters/{cluster_id}")

    def delete_cluster(self, service_id: int, cluster_id: str) -> dict:
        """POST /api/service/{id}/clusters/{cluster_id}/delete - Delete cluster"""
        return self._http.post(f"/api/service/{service_id}/clusters/{cluster_id}/delete")
