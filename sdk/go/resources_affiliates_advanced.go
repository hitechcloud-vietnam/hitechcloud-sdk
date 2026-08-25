package hitechcloud

import "fmt"

// AffiliatesAdvancedResource handles AffiliatesAdvanced endpoints
type AffiliatesAdvancedResource struct {
	client *HTTPClient
}

// GetInfo - Get affiliate info
func (r *AffiliatesAdvancedResource) GetInfo(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/info", clientId), nil)
}

// GetStats - Get stats
func (r *AffiliatesAdvancedResource) GetStats(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/stats", clientId), nil)
}

// GetCommissionPlans - Get commission plans
func (r *AffiliatesAdvancedResource) GetCommissionPlans(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/commission-plans", clientId), nil)
}

// GetVouchers - Get vouchers
func (r *AffiliatesAdvancedResource) GetVouchers(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/vouchers", clientId), nil)
}

// GetCommissions - Get commissions
func (r *AffiliatesAdvancedResource) GetCommissions(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/commissions", clientId), nil)
}

// GetReferrals - Get referrals
func (r *AffiliatesAdvancedResource) GetReferrals(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/referrals", clientId), nil)
}

// GetPayouts - Get payouts
func (r *AffiliatesAdvancedResource) GetPayouts(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/payouts", clientId), nil)
}

// GetCampaigns - Get campaigns
func (r *AffiliatesAdvancedResource) GetCampaigns(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/campaigns", clientId), nil)
}

// GetAudit - Get audit log
func (r *AffiliatesAdvancedResource) GetAudit(clientId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/affiliates_adv/%d/audit", clientId), nil)
}

// Activate - Activate affiliate
func (r *AffiliatesAdvancedResource) Activate(clientId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/affiliates_adv/%d/activate", clientId), nil)
}

// SetCommissionPlan - Set commission plan
func (r *AffiliatesAdvancedResource) SetCommissionPlan(clientId int, commissionId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/affiliates_adv/%d/commission-plan/%d", clientId, commissionId), nil)
}

// GenerateVoucher - Generate voucher
func (r *AffiliatesAdvancedResource) GenerateVoucher(clientId int, planId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/affiliates_adv/%d/vouchers/%d", clientId, planId), nil)
}

// DeleteVoucher - Delete voucher
func (r *AffiliatesAdvancedResource) DeleteVoucher(clientId int, voucherId int )(map[string]interface{}, error) {
	return r.client.Delete(fmt.Sprintf("/api/affiliates_adv/%d/vouchers/%d", clientId, voucherId))
}

// SetLandingPage - Set landing page
func (r *AffiliatesAdvancedResource) SetLandingPage(clientId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/affiliates_adv/%d/landing-page", clientId), data)
}
