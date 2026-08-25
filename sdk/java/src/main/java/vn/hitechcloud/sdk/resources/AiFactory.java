package vn.hitechcloud.sdk.resources;

import java.util.Map;
import vn.hitechcloud.sdk.HttpClient;

public class AiFactory extends BaseResource {

    public AiFactory(HttpClient http) {
        super(http);
    }

    /** List templates */
    public Map<String, Object> templates(int id) throws Exception {
        return http.get(String.format("/api/service/%id/templates", id));
    }

    /** Save template */
    public Map<String, Object> saveTemplate(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/templates", id), data);
    }

    /** Get provisioning mode */
    public Map<String, Object> provisioningMode(int id) throws Exception {
        return http.get(String.format("/api/service/%id/hitechcloud/mode", id));
    }

    /** Get examples */
    public Map<String, Object> examples(int id) throws Exception {
        return http.get(String.format("/api/service/%id/hitechcloud/examples", id));
    }

    /** Get schema */
    public Map<String, Object> schema(int id) throws Exception {
        return http.get(String.format("/api/service/%id/hitechcloud/schema", id));
    }

    /** Get featured templates */
    public Map<String, Object> featuredTemplates(int id) throws Exception {
        return http.get(String.format("/api/service/%id/templates/featured", id));
    }

    /** Get template */
    public Map<String, Object> template(int id, int templateId) throws Exception {
        return http.get(String.format("/api/service/%id/templates/%templateId", id, templateId));
    }

    /** Update template */
    public Map<String, Object> updateTemplate(int id, int templateId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/templates/%templateId", id, templateId), data);
    }

    /** Delete template */
    public Map<String, Object> deleteTemplate(int id, int templateId) throws Exception {
        return http.post(String.format("/api/service/%id/templates/%templateId/delete", id, templateId), null);
    }

    /** List instances */
    public Map<String, Object> instances(int id) throws Exception {
        return http.get(String.format("/api/service/%id/instances", id));
    }

    /** Create instance */
    public Map<String, Object> createInstance(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/instances", id), data);
    }

    /** Get instance types */
    public Map<String, Object> instanceTypes(int id) throws Exception {
        return http.get(String.format("/api/service/%id/instances/types", id));
    }

    /** Get instance */
    public Map<String, Object> instance(int id, int instanceId) throws Exception {
        return http.get(String.format("/api/service/%id/instances/%instanceId", id, instanceId));
    }

    /** Update instance */
    public Map<String, Object> updateInstance(int id, int instanceId, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/instances/%instanceId/update", id, instanceId), data);
    }

    /** Restart instance */
    public Map<String, Object> restartInstance(int id, int instanceId) throws Exception {
        return http.post(String.format("/api/service/%id/instances/%instanceId/restart", id, instanceId), null);
    }

    /** Delete instance */
    public Map<String, Object> deleteInstance(int id, int instanceId) throws Exception {
        return http.post(String.format("/api/service/%id/instances/%instanceId/delete", id, instanceId), null);
    }

    /** Get service instance */
    public Map<String, Object> serviceInstance(int id) throws Exception {
        return http.get(String.format("/api/service/%id/instance", id));
    }

    /** Sync instance */
    public Map<String, Object> syncInstance(int id) throws Exception {
        return http.post(String.format("/api/service/%id/instance/sync", id), null);
    }

    /** Restart service */
    public Map<String, Object> restartService(int id) throws Exception {
        return http.post(String.format("/api/service/%id/instance/restart", id), null);
    }

    /** Update service */
    public Map<String, Object> updateService(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/instance/update", id), data);
    }

    /** List SSH keys */
    public Map<String, Object> sshKeys(int id) throws Exception {
        return http.get(String.format("/api/service/%id/sshkeys", id));
    }

    /** Create SSH key */
    public Map<String, Object> createSshKey(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/sshkeys", id), data);
    }

    /** Get SSH key */
    public Map<String, Object> sshKey(int id, int keyId) throws Exception {
        return http.get(String.format("/api/service/%id/sshkeys/%keyId", id, keyId));
    }

    /** Delete SSH key */
    public Map<String, Object> deleteSshKey(int id, int keyId) throws Exception {
        return http.post(String.format("/api/service/%id/sshkeys/%keyId/delete", id, keyId), null);
    }

    /** Set default SSH key */
    public Map<String, Object> setDefaultSshKey(int id, int keyId) throws Exception {
        return http.post(String.format("/api/service/%id/sshkeys/%keyId/setdefault", id, keyId), null);
    }

    /** List volumes */
    public Map<String, Object> volumes(int id) throws Exception {
        return http.get(String.format("/api/service/%id/volumes", id));
    }

    /** Create volume */
    public Map<String, Object> createVolume(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/volumes", id), data);
    }

    /** Get volume types */
    public Map<String, Object> volumeTypes(int id) throws Exception {
        return http.get(String.format("/api/service/%id/volumes/types", id));
    }

    /** Get volume */
    public Map<String, Object> volume(int id, int volumeId) throws Exception {
        return http.get(String.format("/api/service/%id/volumes/%volumeId", id, volumeId));
    }

    /** Delete volume */
    public Map<String, Object> deleteVolume(int id, int volumeId) throws Exception {
        return http.post(String.format("/api/service/%id/volumes/%volumeId/delete", id, volumeId), null);
    }

    /** List clusters */
    public Map<String, Object> clusters(int id) throws Exception {
        return http.get(String.format("/api/service/%id/clusters", id));
    }

    /** Create cluster */
    public Map<String, Object> createCluster(int id, Map<String, Object> data) throws Exception {
        return http.post(String.format("/api/service/%id/clusters", id), data);
    }

    /** Get cluster types */
    public Map<String, Object> clusterTypes(int id) throws Exception {
        return http.get(String.format("/api/service/%id/clusters/types", id));
    }

    /** Get service cluster */
    public Map<String, Object> serviceCluster(int id) throws Exception {
        return http.get(String.format("/api/service/%id/cluster", id));
    }

    /** Get cluster */
    public Map<String, Object> cluster(int id, int clusterId) throws Exception {
        return http.get(String.format("/api/service/%id/clusters/%clusterId", id, clusterId));
    }

    /** Delete cluster */
    public Map<String, Object> deleteCluster(int id, int clusterId) throws Exception {
        return http.post(String.format("/api/service/%id/clusters/%clusterId/delete", id, clusterId), null);
    }

}
