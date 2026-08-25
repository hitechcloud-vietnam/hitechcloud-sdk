namespace HiTechCloud.SDK.Resources;

public class AiFactory : BaseResource
{
    public AiFactory(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> TemplatesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/templates", id));
    }

    public async Task<Dictionary<string, object?>> SaveTemplateAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/templates", id), data);
    }

    public async Task<Dictionary<string, object?>> ProvisioningModeAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/hitechcloud/mode", id));
    }

    public async Task<Dictionary<string, object?>> ExamplesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/hitechcloud/examples", id));
    }

    public async Task<Dictionary<string, object?>> SchemaAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/hitechcloud/schema", id));
    }

    public async Task<Dictionary<string, object?>> FeaturedTemplatesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/templates/featured", id));
    }

    public async Task<Dictionary<string, object?>> TemplateAsync(int id, int templateId)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/templates/{templateId}", id, templateId));
    }

    public async Task<Dictionary<string, object?>> UpdateTemplateAsync(int id, int templateId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/templates/{templateId}", id, templateId), data);
    }

    public async Task<Dictionary<string, object?>> DeleteTemplateAsync(int id, int templateId)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/templates/{templateId}/delete", id, templateId), null);
    }

    public async Task<Dictionary<string, object?>> InstancesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/instances", id));
    }

    public async Task<Dictionary<string, object?>> CreateInstanceAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/instances", id), data);
    }

    public async Task<Dictionary<string, object?>> InstanceTypesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/instances/types", id));
    }

    public async Task<Dictionary<string, object?>> InstanceAsync(int id, int instanceId)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/instances/{instanceId}", id, instanceId));
    }

    public async Task<Dictionary<string, object?>> UpdateInstanceAsync(int id, int instanceId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/instances/{instanceId}/update", id, instanceId), data);
    }

    public async Task<Dictionary<string, object?>> RestartInstanceAsync(int id, int instanceId)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/instances/{instanceId}/restart", id, instanceId), null);
    }

    public async Task<Dictionary<string, object?>> DeleteInstanceAsync(int id, int instanceId)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/instances/{instanceId}/delete", id, instanceId), null);
    }

    public async Task<Dictionary<string, object?>> ServiceInstanceAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/instance", id));
    }

    public async Task<Dictionary<string, object?>> SyncInstanceAsync(int id)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/instance/sync", id), null);
    }

    public async Task<Dictionary<string, object?>> RestartServiceAsync(int id)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/instance/restart", id), null);
    }

    public async Task<Dictionary<string, object?>> UpdateServiceAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/instance/update", id), data);
    }

    public async Task<Dictionary<string, object?>> SshKeysAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/sshkeys", id));
    }

    public async Task<Dictionary<string, object?>> CreateSshKeyAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/sshkeys", id), data);
    }

    public async Task<Dictionary<string, object?>> SshKeyAsync(int id, int keyId)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/sshkeys/{keyId}", id, keyId));
    }

    public async Task<Dictionary<string, object?>> DeleteSshKeyAsync(int id, int keyId)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/sshkeys/{keyId}/delete", id, keyId), null);
    }

    public async Task<Dictionary<string, object?>> SetDefaultSshKeyAsync(int id, int keyId)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/sshkeys/{keyId}/setdefault", id, keyId), null);
    }

    public async Task<Dictionary<string, object?>> VolumesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/volumes", id));
    }

    public async Task<Dictionary<string, object?>> CreateVolumeAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/volumes", id), data);
    }

    public async Task<Dictionary<string, object?>> VolumeTypesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/volumes/types", id));
    }

    public async Task<Dictionary<string, object?>> VolumeAsync(int id, int volumeId)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/volumes/{volumeId}", id, volumeId));
    }

    public async Task<Dictionary<string, object?>> DeleteVolumeAsync(int id, int volumeId)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/volumes/{volumeId}/delete", id, volumeId), null);
    }

    public async Task<Dictionary<string, object?>> ClustersAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/clusters", id));
    }

    public async Task<Dictionary<string, object?>> CreateClusterAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/clusters", id), data);
    }

    public async Task<Dictionary<string, object?>> ClusterTypesAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/clusters/types", id));
    }

    public async Task<Dictionary<string, object?>> ServiceClusterAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/cluster", id));
    }

    public async Task<Dictionary<string, object?>> ClusterAsync(int id, int clusterId)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/clusters/{clusterId}", id, clusterId));
    }

    public async Task<Dictionary<string, object?>> DeleteClusterAsync(int id, int clusterId)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/clusters/{clusterId}/delete", id, clusterId), null);
    }
}
