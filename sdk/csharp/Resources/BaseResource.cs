namespace HiTechCloud.SDK.Resources;

public class BaseResource
{
    protected readonly HttpClientWrapper Http;

    public BaseResource(HttpClientWrapper http) => Http = http;
}
