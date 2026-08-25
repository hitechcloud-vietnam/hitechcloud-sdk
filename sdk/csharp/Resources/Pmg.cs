using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Pmg : BaseResource
{
    public Pmg(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> ConfigAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpmg/config", id));
    }

    public async Task<Dictionary<string, object?>> AddDomainAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/htcpmg/domains", id), data);
    }

    public async Task<Dictionary<string, object?>> AddTransportAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/htcpmg/transport", id), data);
    }

    public async Task<Dictionary<string, object?>> StatsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpmg/stats", id));
    }
}
