namespace HiTechCloud.SDK.Resources;

public class Partner : BaseResource
{
    public Partner(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> InfoAsync()
    {
        return await Http.GetAsync("/api/partner");
    }

    public async Task<Dictionary<string, object?>> ApplyAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/partner/apply", data);
    }

    public async Task<Dictionary<string, object?>> TiersAsync()
    {
        return await Http.GetAsync("/api/partner/tiers");
    }

    public async Task<Dictionary<string, object?>> PricingAsync()
    {
        return await Http.GetAsync("/api/partner/pricing");
    }

    public async Task<Dictionary<string, object?>> CustomersAsync()
    {
        return await Http.GetAsync("/api/partner/customers");
    }

    public async Task<Dictionary<string, object?>> EarningsAsync()
    {
        return await Http.GetAsync("/api/partner/earnings");
    }

    public async Task<Dictionary<string, object?>> WalletAsync()
    {
        return await Http.GetAsync("/api/partner/wallet");
    }

    public async Task<Dictionary<string, object?>> PayoutsAsync()
    {
        return await Http.GetAsync("/api/partner/payouts");
    }

    public async Task<Dictionary<string, object?>> RequestPayoutAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/partner/payouts", data);
    }

    public async Task<Dictionary<string, object?>> LeadsAsync()
    {
        return await Http.GetAsync("/api/partner/leads");
    }

    public async Task<Dictionary<string, object?>> CreateLeadAsync(Dictionary<string, object> data)
    {
        return await Http.PostAsync("/api/partner/leads", data);
    }

    public async Task<Dictionary<string, object?>> ReferralAsync()
    {
        return await Http.GetAsync("/api/partner/referral");
    }

    public async Task<Dictionary<string, object?>> RatesAsync()
    {
        return await Http.GetAsync("/api/partner/rates");
    }
}
