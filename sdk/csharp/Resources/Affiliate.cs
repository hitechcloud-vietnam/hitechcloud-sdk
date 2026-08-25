namespace HiTechCloud.SDK.Resources;

public class Affiliate : BaseResource
{
    public Affiliate(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> SummaryAsync()
    {
        return await Http.GetAsync("/api/affiliates/summary");
    }

    public async Task<Dictionary<string, object?>> CampaignsAsync()
    {
        return await Http.GetAsync("/api/affiliates/campaigns");
    }

    public async Task<Dictionary<string, object?>> CommissionsAsync()
    {
        return await Http.GetAsync("/api/affiliates/commissions");
    }

    public async Task<Dictionary<string, object?>> PayoutsAsync()
    {
        return await Http.GetAsync("/api/affiliates/payouts");
    }

    public async Task<Dictionary<string, object?>> VouchersAsync()
    {
        return await Http.GetAsync("/api/affiliates/vouchers");
    }

    public async Task<Dictionary<string, object?>> CommissionPlansAsync()
    {
        return await Http.GetAsync("/api/affiliates/commissionplans");
    }
}
