using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Collocation : BaseResource
{
    public Collocation(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> PduAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pdu", id));
    }

    public async Task<Dictionary<string, object?>> PduPortAsync(int id, int port)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/pdu/{port}", id, port));
    }

    public async Task<Dictionary<string, object?>> TogglePduPortAsync(int id, int port, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/pdu/{port}", id, port), data);
    }
}
