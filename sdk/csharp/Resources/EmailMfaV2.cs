using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class EmailMfaV2 : BaseResource
{
    public EmailMfaV2(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> StatusAsync(string userType, int userId)
    {
        return await Http.GetAsync(string.Format("/api/email_mfa_v2/status/{userType}/{userId}", userType, userId));
    }

    public async Task<Dictionary<string, object?>> SendAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/email_mfa_v2/send", data);
    }

    public async Task<Dictionary<string, object?>> VerifyAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/email_mfa_v2/verify", data);
    }

    public async Task<Dictionary<string, object?>> ListAsync(string userType, int userId)
    {
        return await Http.GetAsync(string.Format("/api/email_mfa_v2/list/{userType}/{userId}", userType, userId));
    }

    public async Task<Dictionary<string, object?>> RevokeAllAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/email_mfa_v2/revokeall", data);
    }

    public async Task<Dictionary<string, object?>> DisableAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/email_mfa_v2/disable", data);
    }
}
