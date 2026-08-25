namespace HiTechCloud.SDK.Resources;

public class PasskeyV2 : BaseResource
{
    public PasskeyV2(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> StatusAsync(string userType, int userId)
    {
        return await Http.GetAsync(string.Format("/api/passkeyv2/status/{userType}/{userId}", userType, userId));
    }

    public async Task<Dictionary<string, object?>> CredentialsAsync(string userType, int userId)
    {
        return await Http.GetAsync(string.Format("/api/passkeyv2/credentials/{userType}/{userId}", userType, userId));
    }

    public async Task<Dictionary<string, object?>> DeleteCredentialAsync(string userType, int userId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/passkeyv2/credentials/{userType}/{userId}/delete", userType, userId), data);
    }

    public async Task<Dictionary<string, object?>> SendEmailOtpAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/passkeyv2/email_otp/send", data);
    }

    public async Task<Dictionary<string, object?>> VerifyEmailOtpAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/passkeyv2/email_otp/verify", data);
    }

    public async Task<Dictionary<string, object?>> DisableMfaAsync(string userType, int userId)
    {
        return await Http.PostAsync(string.Format("/api/passkeyv2/disable/{userType}/{userId}", userType, userId), null);
    }
}
