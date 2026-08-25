namespace HiTechCloud.SDK.Resources;

public class Ipam : BaseResource
{
    public Ipam(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> IpsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcipam/ips", id));
    }

    public async Task<Dictionary<string, object?>> SubnetsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcipam/subnets", id));
    }

    public async Task<Dictionary<string, object?>> RdnsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcipam/rdns", id));
    }

    public async Task<Dictionary<string, object?>> SetRdnsAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/htcipam/rdns", id), data);
    }
}
