namespace HiTechCloud.SDK.Resources;

public class Billing : BaseResource
{
    public Billing(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> BalanceAsync()
    {
        return await Http.GetAsync("/api/balance");
    }

    public async Task<Dictionary<string, object?>> InvoicesAsync()
    {
        return await Http.GetAsync("/api/invoice");
    }

    public async Task<Dictionary<string, object?>> InvoiceAsync(int id)
    {
        return await Http.GetAsync(string.Format("/api/invoice/{id}", id));
    }

    public async Task<Dictionary<string, object?>> InvoiceCreditAsync(int id, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/invoice/{id}/credit", id), data);
    }

    public async Task<Dictionary<string, object?>> PaymentsAsync()
    {
        return await Http.GetAsync("/api/payment");
    }

    public async Task<Dictionary<string, object?>> PaymentFeesAsync()
    {
        return await Http.GetAsync("/api/payment/fees");
    }
}
