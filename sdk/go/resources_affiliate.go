package hitechcloud

// AffiliateResource handles affiliate endpoints
type AffiliateResource struct {
	client *HTTPClient
}

func (r *AffiliateResource) GetDetails() (map[string]interface{}, error) {
	return r.client.Get("/api/affiliate", nil)
}

func (r *AffiliateResource) GetBalance() (map[string]interface{}, error) {
	return r.client.Get("/api/affiliate/balance", nil)
}

func (r *AffiliateResource) GetPayout() (map[string]interface{}, error) {
	return r.client.Get("/api/affiliate/payout", nil)
}

func (r *AffiliateResource) UpdatePayout(data map[string]interface{}) (map[string]interface{}, error) {
	return r.client.Put("/api/affiliate/payout", data)
}

func (r *AffiliateResource) ListReferrals(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/affiliate/referrals", params)
}

func (r *AffiliateResource) ListTransactions(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/affiliate/transactions", params)
}
