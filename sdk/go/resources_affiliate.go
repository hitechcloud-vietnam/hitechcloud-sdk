package hitechcloud

// AffiliateResource handles Affiliate endpoints
type AffiliateResource struct {
	client *HTTPClient
}

// GetSummary - Get affiliate summary
func (r *AffiliateResource) GetSummary()(map[string]interface{}, error) {
	return r.client.Get("/api/affiliates/summary", nil)
}

// ListCampaigns - List campaigns
func (r *AffiliateResource) ListCampaigns()(map[string]interface{}, error) {
	return r.client.Get("/api/affiliates/campaigns", nil)
}

// ListCommissions - List commissions
func (r *AffiliateResource) ListCommissions(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/affiliates/commissions", params)
}

// ListPayouts - List payouts
func (r *AffiliateResource) ListPayouts()(map[string]interface{}, error) {
	return r.client.Get("/api/affiliates/payouts", nil)
}

// ListVouchers - List vouchers
func (r *AffiliateResource) ListVouchers()(map[string]interface{}, error) {
	return r.client.Get("/api/affiliates/vouchers", nil)
}

// ListCommissionPlans - List commission plans
func (r *AffiliateResource) ListCommissionPlans()(map[string]interface{}, error) {
	return r.client.Get("/api/affiliates/commissionplans", nil)
}
