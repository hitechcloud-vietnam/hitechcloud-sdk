using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Proxmox : BaseResource
{
    public Proxmox(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> StatusAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpve/status", id));
    }

    public async Task<Dictionary<string, object?>> PowerAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/htcpve/power", id), data);
    }

    public async Task<Dictionary<string, object?>> VmsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpve/vms", id));
    }

    public async Task<Dictionary<string, object?>> IpsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpve/ips", id));
    }

    public async Task<Dictionary<string, object?>> SetRdnsAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/htcpve/rdns", id), data);
    }

    public async Task<Dictionary<string, object?>> BackupsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpve/backups", id));
    }

    public async Task<Dictionary<string, object?>> CreateBackupAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/htcpve/backups", id), data);
    }

    public async Task<Dictionary<string, object?>> SnapshotsAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpve/snapshots", id));
    }

    public async Task<Dictionary<string, object?>> CreateSnapshotAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/service/{id}/htcpve/snapshots", id), data);
    }

    public async Task<Dictionary<string, object?>> UsageAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/service/{id}/htcpve/usage", id));
    }
}
