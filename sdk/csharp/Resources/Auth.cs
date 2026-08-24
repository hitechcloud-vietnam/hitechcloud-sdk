namespace HiTechCloud.SDK.Resources;

public class Auth : BaseResource
{
    public Auth(HttpClientWrapper http) : base(http) { }

    public Task<Dictionary<string, object?>> LoginAsync(string email, string password)
        => Http.PostAsync("/api/auth/login", new { email, password });

    public Task<Dictionary<string, object?>> LogoutAsync()
        => Http.PostAsync("/api/auth/logout");

    public Task<Dictionary<string, object?>> RefreshTokenAsync()
        => Http.PostAsync("/api/auth/refresh");

    public Task<Dictionary<string, object?>> RevokeTokenAsync()
        => Http.PostAsync("/api/auth/revoke");

    public Task<Dictionary<string, object?>> PasswordResetAsync(string email)
        => Http.PostAsync("/api/auth/password/reset", new { email });

    public Task<Dictionary<string, object?>> SignupAsync(string email, string password, string firstName, string lastName)
        => Http.PostAsync("/api/auth/signup", new { email, password, first_name = firstName, last_name = lastName });
}
