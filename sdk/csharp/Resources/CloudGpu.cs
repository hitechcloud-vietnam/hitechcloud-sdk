using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class CloudGpu : BaseResource
{
    public CloudGpu(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> RebootAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{id}/vms/reboot", id), data);
    }

    public async Task<Dictionary<string, object?>> StopAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{id}/vms/stop", id), data);
    }

    public async Task<Dictionary<string, object?>> StartAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PutAsync(string.Format("/api/service/{id}/vms/start", id), data);
    }

    public async Task<Dictionary<string, object?>> FirewallAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/vms/firewall", id));
    }

    public async Task<Dictionary<string, object?>> CreateFirewallAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/vms/firewall", id), data);
    }

    public async Task<Dictionary<string, object?>> DeleteFirewallAsync(int id, int position)
    {
        return await Http.DeleteAsync(string.Format("/api/service/{id}/vms/firewall/{position}", id, position));
    }
}
