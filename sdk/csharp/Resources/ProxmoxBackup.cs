using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class ProxmoxBackup : BaseResource
{
    public ProxmoxBackup(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> PbsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pbs", id));
    }

    public async Task<Dictionary<string, object?>> CredentialsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pbs/credentials", id));
    }

    public async Task<Dictionary<string, object?>> UsageAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pbs/usage", id));
    }

    public async Task<Dictionary<string, object?>> MetricsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pbs/metrics", id));
    }

    public async Task<Dictionary<string, object?>> SnapshotsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pbs/snapshots", id));
    }

    public async Task<Dictionary<string, object?>> GroupsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pbs/groups", id));
    }

    public async Task<Dictionary<string, object?>> ChangePasswordAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/pbs/password", id), data);
    }

    public async Task<Dictionary<string, object?>> CreateTokenAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/pbs/token", id), data);
    }

    public async Task<Dictionary<string, object?>> DeleteTokenAsync(int id)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{id}/pbs/token", id));
    }
}
