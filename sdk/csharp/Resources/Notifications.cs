using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class Notifications : BaseResource
{
    public Notifications(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> NotificationsAsync()
    {
        return await Http.GetAsync("/api/notifications");
    }

    public async Task<Dictionary<string, object?>> NewNotificationsAsync()
    {
        return await Http.GetAsync("/api/notifications/new");
    }

    public async Task<Dictionary<string, object?>> AcknowledgeAsync(int id)
    {
        return await Http.PutAsync(string.Format("/api/notifications/{id}/ack", id), null);
    }
}
