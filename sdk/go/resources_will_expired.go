package hitechcloud

import "fmt"

// WillExpiredResource handles WillExpired endpoints
type WillExpiredResource struct {
	client *HTTPClient
}

// List - List expiring items
func (r *WillExpiredResource) List(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/willexpired", params)
}

// GetSummary - Get summary
func (r *WillExpiredResource) GetSummary(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/willexpired/summary", params)
}

// GetConfig - Get config
func (r *WillExpiredResource) GetConfig()(map[string]interface{}, error) {
	return r.client.Get("/api/willexpired/config", nil)
}

// ListInvoices - List invoices
func (r *WillExpiredResource) ListInvoices()(map[string]interface{}, error) {
	return r.client.Get("/api/willexpired/invoices", nil)
}

// ListRequests - List requests
func (r *WillExpiredResource) ListRequests()(map[string]interface{}, error) {
	return r.client.Get("/api/willexpired/requests", nil)
}

// ExportAll - Export all
func (r *WillExpiredResource) ExportAll()(map[string]interface{}, error) {
	return r.client.Get("/api/willexpired/export", nil)
}

// GetItem - Get item
func (r *WillExpiredResource) GetItem(itemType string, itemId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/willexpired/%s/%d", itemType, itemId), nil)
}

// Renew - Renew item
func (r *WillExpiredResource) Renew(itemType string, itemId int )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/willexpired/%s/%d/renew", itemType, itemId), nil)
}

// GetAutorenew - Get auto-renew
func (r *WillExpiredResource) GetAutorenew(itemType string, itemId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/willexpired/%s/%d/autorenew", itemType, itemId), nil)
}

// SetAutorenew - Set auto-renew
func (r *WillExpiredResource) SetAutorenew(itemType string, itemId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/willexpired/%s/%d/autorenew", itemType, itemId), data)
}
