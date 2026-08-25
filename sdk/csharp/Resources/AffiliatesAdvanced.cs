using System.Collections.Generic;
using System.Threading.Tasks;

namespace HiTechCloud.SDK.Resources;

public class AffiliatesAdvanced : BaseResource
{
    public AffiliatesAdvanced(HttpClientWrapper http) : base(http) { }

    public async Task<Dictionary<string, object?>> InfoAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/info", clientId));
    }

    public async Task<Dictionary<string, object?>> StatsAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/stats", clientId));
    }

    public async Task<Dictionary<string, object?>> CommissionPlansAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/commission-plans", clientId));
    }

    public async Task<Dictionary<string, object?>> VouchersAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/vouchers", clientId));
    }

    public async Task<Dictionary<string, object?>> CommissionsAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/commissions", clientId));
    }

    public async Task<Dictionary<string, object?>> ReferralsAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/referrals", clientId));
    }

    public async Task<Dictionary<string, object?>> PayoutsAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/payouts", clientId));
    }

    public async Task<Dictionary<string, object?>> CampaignsAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/campaigns", clientId));
    }

    public async Task<Dictionary<string, object?>> AuditAsync(int clientId)
    {
        return await Http.GetAsync(string.Format("/api/affiliates_adv/{clientId}/audit", clientId));
    }

    public async Task<Dictionary<string, object?>> ActivateAsync(int clientId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/affiliates_adv/{clientId}/activate", clientId), data);
    }

    public async Task<Dictionary<string, object?>> SetCommissionPlanAsync(int clientId, int commissionId)
    {
        return await Http.PostAsync(string.Format("/api/affiliates_adv/{clientId}/commission-plan/{commissionId}", clientId, commissionId), null);
    }

    public async Task<Dictionary<string, object?>> CreateVoucherAsync(int clientId, int planId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/affiliates_adv/{clientId}/vouchers/{planId}", clientId, planId), data);
    }

    public async Task<Dictionary<string, object?>> DeleteVoucherAsync(int clientId, int voucherId)
    {
        return await Http.DeleteAsync(string.Format("/api/affiliates_adv/{clientId}/vouchers/{voucherId}", clientId, voucherId));
    }

    public async Task<Dictionary<string, object?>> SetLandingPageAsync(int clientId, Dictionary<string, object> data)
    {
        return await Http.PostAsync(string.Format("/api/affiliates_adv/{clientId}/landing-page", clientId), data);
    }
}
