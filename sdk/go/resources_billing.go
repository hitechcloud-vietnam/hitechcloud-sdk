package hitechcloud

import "fmt"

// BillingResource handles billing endpoints
type BillingResource struct {
	client *HTTPClient
}

func (r *BillingResource) GetBalance() (map[string]interface{}, error) {
	return r.client.Get("/api/billing/balance", nil)
}

func (r *BillingResource) ListInvoices(params map[string]string) (map[string]interface{}, error) {
	return r.client.Get("/api/billing/invoices", params)
}

func (r *BillingResource) GetInvoice(invoiceID int) (map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/billing/invoices/%d", invoiceID), nil)
}

func (r *BillingResource) ApplyCredit(amount float64) (map[string]interface{}, error) {
	return r.client.Post("/api/billing/credit", map[string]float64{"amount": amount})
}

func (r *BillingResource) GetPaymentMethods() (map[string]interface{}, error) {
	return r.client.Get("/api/billing/methods", nil)
}

func (r *BillingResource) GetPaymentFees() (map[string]interface{}, error) {
	return r.client.Get("/api/billing/fees", nil)
}
