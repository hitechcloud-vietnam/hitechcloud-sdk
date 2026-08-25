namespace HiTechCloud.SDK.Resources;

public class Ssl : BaseResource
{
    public Ssl(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> CertificatesAsync()
    {
        return await Http.GetAsync("/api/certificate");
    }

    public async Task<Dictionary<string, object?>> CertificateAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/certificate/{id}", id));
    }

    public async Task<Dictionary<string, object?>> CertificateCrtAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/certificate/{id}/crt", id));
    }

    public async Task<Dictionary<string, object?>> OrdersAsync()
    {
        return await Http.GetAsync("/api/certificate/order");
    }

    public async Task<Dictionary<string, object?>> CreateOrderAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/certificate/order", data);
    }

    public async Task<Dictionary<string, object?>> OrderSoftwareAsync(int productId)
    {
        return await Http.GetAsync(string.Format("/api/certificate/order/{productId}/software", productId));
    }
}
