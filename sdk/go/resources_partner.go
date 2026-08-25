package hitechcloud

// PartnerResource handles Partner endpoints
type PartnerResource struct {
	client *HTTPClient
}

// GetPartnerInfo - Get partner info
func (r *PartnerResource) GetPartnerInfo()(map[string]interface{}, error) {
	return r.client.Get("/api/partner", nil)
}

// Apply - Apply
func (r *PartnerResource) Apply(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/partner/apply", data)
}

// ListTiers - List tiers
func (r *PartnerResource) ListTiers()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/tiers", nil)
}

// GetPricing - Get pricing
func (r *PartnerResource) GetPricing()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/pricing", nil)
}

// ListCustomers - List customers
func (r *PartnerResource) ListCustomers()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/customers", nil)
}

// GetEarnings - Get earnings
func (r *PartnerResource) GetEarnings()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/earnings", nil)
}

// GetWallet - Get wallet
func (r *PartnerResource) GetWallet()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/wallet", nil)
}

// ListPayouts - List payouts
func (r *PartnerResource) ListPayouts()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/payouts", nil)
}

// RequestPayout - Request payout
func (r *PartnerResource) RequestPayout(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/partner/payouts", data)
}

// ListLeads - List leads
func (r *PartnerResource) ListLeads()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/leads", nil)
}

// CreateLead - Create lead
func (r *PartnerResource) CreateLead(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/partner/leads", data)
}

// GetReferral - Get referral
func (r *PartnerResource) GetReferral()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/referral", nil)
}

// GetRates - Get rates
func (r *PartnerResource) GetRates()(map[string]interface{}, error) {
	return r.client.Get("/api/partner/rates", nil)
}
