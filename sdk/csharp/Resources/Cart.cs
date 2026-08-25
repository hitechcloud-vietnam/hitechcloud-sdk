namespace HiTechCloud.SDK.Resources;

public class Cart : BaseResource
{
    public Cart(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> CategoriesAsync()
    {
        return await Http.GetAsync("/api/category");
    }

    public async Task<Dictionary<string, object?>> ProductsAsync(int categoryId)
    {
        return await Http.GetAsync(string.Format("/api/category/{categoryId}/product", categoryId));
    }

    public async Task<Dictionary<string, object?>> OrderInfoAsync(int productId)
    {
        return await Http.GetAsync(string.Format("/api/order/{productId}", productId));
    }

    public async Task<Dictionary<string, object?>> CreateOrderAsync(int productId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/order/{productId}", productId), data);
    }

    public async Task<Dictionary<string, object?>> CheckoutAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/order", data);
    }

    public async Task<Dictionary<string, object?>> QuoteAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/quote", data);
    }
}
