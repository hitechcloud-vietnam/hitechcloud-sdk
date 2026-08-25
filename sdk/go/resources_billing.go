package hitechcloud

import "fmt"

// BillingResource handles Billing endpoints
type BillingResource struct {
	client *HTTPClient
}

// GetBalance - Get balance
func (r *BillingResource) GetBalance()(map[string]interface{}, error) {
	return r.client.Get("/api/balance", nil)
}

// ListInvoices - List invoices
func (r *BillingResource) ListInvoices(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/invoice", params)
}

// GetInvoice - Get invoice
func (r *BillingResource) GetInvoice(invoiceId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/invoice/%d", invoiceId), nil)
}

// ApplyCredit - Apply credit
func (r *BillingResource) ApplyCredit(invoiceId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/invoice/%d/credit", invoiceId), data)
}

// ListPayments - List payments
func (r *BillingResource) ListPayments(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/payment", params)
}

// GetPaymentFees - Get payment fees
func (r *BillingResource) GetPaymentFees()(map[string]interface{}, error) {
	return r.client.Get("/api/payment/fees", nil)
}
