using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Hosting : BaseResource
{
    public Hosting(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ReinstallAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/reinstall", id));
    }

    public async Task<Dictionary<string, object?>> DoReinstallAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/reinstall", id), data);
    }

    public async Task<Dictionary<string, object?>> StatusAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/status", id));
    }

    public async Task<Dictionary<string, object?>> BandwidthGraphsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/bandwidth-graphs", id));
    }

    public async Task<Dictionary<string, object?>> BandwidthAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/bandwidth", id));
    }

    public async Task<Dictionary<string, object?>> ResetPasswordAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/reset", id), data);
    }
}
