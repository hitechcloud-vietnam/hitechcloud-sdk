namespace HiTechCloud.SDK.Resources;

public class Auth : BaseResource
{
    public Auth(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> LoginAsync(string email, string password)
    {
        return await Http.PostAsync("/api/login", new Dictionary<string, object> { "email" = email, "password" = password });
    }

    public async Task<Dictionary<string, object?>> LogoutAsync()
    {
        return await Http.PostAsync("/api/logout", null);
    }

    public async Task<Dictionary<string, object?>> RefreshTokenAsync()
    {
        return await Http.PostAsync("/api/token", null);
    }

    public async Task<Dictionary<string, object?>> RevokeTokenAsync()
    {
        return await Http.PostAsync("/api/revoke", null);
    }

    public async Task<Dictionary<string, object?>> PasswordResetAsync(string email)
    {
        return await Http.PostAsync("/api/passwordreset", new Dictionary<string, object> { "email" = email });
    }

    public async Task<Dictionary<string, object?>> SignupAsync(string email, string password, string firstName, string lastName)
    {
        return await Http.PostAsync("/api/signup", new Dictionary<string, object> { "email" = email, "password" = password, "firstName" = firstName, "lastName" = lastName });
    }
}
