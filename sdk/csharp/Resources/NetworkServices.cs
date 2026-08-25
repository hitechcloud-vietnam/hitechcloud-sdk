using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class NetworkServices : BaseResource
{
    public NetworkServices(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> IpsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/ip", id));
    }

    public async Task<Dictionary<string, object?>> RdnsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/rdns", id));
    }

    public async Task<Dictionary<string, object?>> SetRdnsAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/rdns", id), data);
    }
}
