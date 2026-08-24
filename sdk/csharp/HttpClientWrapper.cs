using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;

namespace HiTechCloud.SDK;

internal class HttpClientWrapper
{
    private readonly HttpClient _httpClient;
    private readonly string _baseUrl;
    private readonly int _maxRetries;
    private string? _token;

    public HttpClientWrapper(string baseUrl, int timeout, int maxRetries)
    {
        _baseUrl = baseUrl;
        _maxRetries = maxRetries;
        _httpClient = new HttpClient { Timeout = TimeSpan.FromSeconds(timeout) };
    }

    public void SetToken(string token) => _token = token;
    public void ClearToken() => _token = null;

    public async Task<Dictionary<string, object?>> RequestAsync(
        string method, string path, object? body = null, Dictionary<string, string>? queryParams = null)
    {
        Exception? lastError = null;

        for (int attempt = 0; attempt <= _maxRetries; attempt++)
        {
            try
            {
                var url = _baseUrl + path;
                if (queryParams?.Count > 0)
                {
                    var qs = string.Join("&", queryParams.Select(kv => $"{kv.Key}={kv.Value}"));
                    url += "?" + qs;
                }

                var request = new HttpRequestMessage(new HttpMethod(method), url);
                request.Headers.UserAgent.ParseAdd($"HiTechCloud-SDK-CSharp/{HiTechCloudClient.VERSION}");

                if (_token != null)
                    request.Headers.Authorization = new AuthenticationHeaderValue("Bearer", _token);

                if (body != null && (method == "POST" || method == "PUT"))
                {
                    var json = JsonSerializer.Serialize(body);
                    request.Content = new StringContent(json, Encoding.UTF8, "application/json");
                }

                var response = await _httpClient.SendAsync(request);

                if ((int)response.StatusCode == 429 && attempt < _maxRetries)
                {
                    var retryAfter = response.Headers.RetryAfter?.Delta?.TotalSeconds ?? 60;
                    await Task.Delay(TimeSpan.FromSeconds(retryAfter));
                    continue;
                }

                if ((int)response.StatusCode >= 500 && attempt < _maxRetries)
                {
                    await Task.Delay(TimeSpan.FromSeconds(Math.Pow(2, attempt)));
                    continue;
                }

                var responseBody = await response.Content.ReadAsStringAsync();
                var result = JsonSerializer.Deserialize<Dictionary<string, JsonElement>>(responseBody);

                var dict = result?.ToDictionary(
                    kv => kv.Key,
                    kv => (object?)kv.Value.ToString()
                ) ?? new Dictionary<string, object?>();

                if ((int)response.StatusCode >= 400)
                    throw MapError((int)response.StatusCode, dict);

                return dict;
            }
            catch (HiTechCloudException) { throw; }
            catch (Exception ex)
            {
                lastError = ex;
                if (attempt < _maxRetries)
                    await Task.Delay(TimeSpan.FromSeconds(Math.Pow(2, attempt)));
            }
        }

        throw new HiTechCloudException($"Request failed: {lastError?.Message}");
    }

    public Task<Dictionary<string, object?>> GetAsync(string path, Dictionary<string, string>? queryParams = null)
        => RequestAsync("GET", path, null, queryParams);

    public Task<Dictionary<string, object?>> PostAsync(string path, object? body = null)
        => RequestAsync("POST", path, body);

    public Task<Dictionary<string, object?>> PutAsync(string path, object? body = null)
        => RequestAsync("PUT", path, body);

    public Task<Dictionary<string, object?>> DeleteAsync(string path)
        => RequestAsync("DELETE", path);

    private static HiTechCloudException MapError(int statusCode, Dictionary<string, object?> data)
    {
        var message = data.ContainsKey("error") ? data["error"]?.ToString() ?? "API error"
            : data.ContainsKey("message") ? data["message"]?.ToString() ?? "API error"
            : "API error";

        return statusCode switch
        {
            401 => new AuthenticationException(message, statusCode, data),
            403 => new AuthorizationException(message, statusCode, data),
            404 => new NotFoundException(message, statusCode, data),
            422 => new ValidationException(message, statusCode, data),
            429 => new RateLimitException(message, statusCode, data),
            _ => statusCode >= 500
                ? new ServerException(message, statusCode, data)
                : new HiTechCloudException(message, statusCode, data)
        };
    }
}
