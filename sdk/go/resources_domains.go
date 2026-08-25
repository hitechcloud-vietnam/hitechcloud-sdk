package hitechcloud

import "fmt"

// DomainsResource handles Domains endpoints
type DomainsResource struct {
	client *HTTPClient
}

// Whois - WHOIS lookup
func (r *DomainsResource) Whois(domain string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/whois/%s", domain), nil)
}

// List - List domains
func (r *DomainsResource) List(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/domain", params)
}

// Get - Get domain
func (r *DomainsResource) Get(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d", domainId), nil)
}

// GetByName - Get domain by name
func (r *DomainsResource) GetByName(name string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/name/%s", name), nil)
}

// GetNameservers - Get nameservers
func (r *DomainsResource) GetNameservers(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/ns", domainId), nil)
}

// SetNameservers - Set nameservers
func (r *DomainsResource) SetNameservers(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/ns", domainId), data)
}

// GetEppCode - Get EPP code
func (r *DomainsResource) GetEppCode(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/epp", domainId), nil)
}

// Sync - Sync domain
func (r *DomainsResource) Sync(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/sync", domainId), nil)
}

// GetRegLock - Get registrar lock
func (r *DomainsResource) GetRegLock(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/reglock", domainId), nil)
}

// SetRegLock - Set registrar lock
func (r *DomainsResource) SetRegLock(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/reglock", domainId), data)
}

// ToggleIdProtection - Toggle ID protection
func (r *DomainsResource) ToggleIdProtection(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/idprotection", domainId), data)
}

// GetContacts - Get domain contacts
func (r *DomainsResource) GetContacts(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/contact", domainId), nil)
}

// SetContacts - Set domain contacts
func (r *DomainsResource) SetContacts(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/contact", domainId), data)
}

// GetEmailForwarding - Get email forwarding
func (r *DomainsResource) GetEmailForwarding(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/email/forwarding", domainId), nil)
}

// SetEmailForwarding - Set email forwarding
func (r *DomainsResource) SetEmailForwarding(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Put(fmt.Sprintf("/api/domain/%d/email/forwarding", domainId), data)
}

// CheckAvailability - Check availability
func (r *DomainsResource) CheckAvailability(domain string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/availability/%s", domain), nil)
}

// ListOrders - List domain orders
func (r *DomainsResource) ListOrders(params map[string]string )(map[string]interface{}, error) {
	return r.client.Get("/api/domain/order", params)
}

// CreateOrder - Create domain order
func (r *DomainsResource) CreateOrder(data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post("/api/domain/order", data)
}

// GetOrderForm - Get order form
func (r *DomainsResource) GetOrderForm(orderId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/order/%d/form", orderId), nil)
}

// Renew - Renew domain
func (r *DomainsResource) Renew(domainId int, data map[string]interface{} )(map[string]interface{}, error) {
	return r.client.Post(fmt.Sprintf("/api/domain/%d/renew", domainId), data)
}

// WhoisLookup - WHOIS lookup v2
func (r *DomainsResource) WhoisLookup(domain string )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/whoislookup/%s", domain), nil)
}

// GetDocuments - Get domain documents
func (r *DomainsResource) GetDocuments(domainId int )(map[string]interface{}, error) {
	return r.client.Get(fmt.Sprintf("/api/domain/%d/documents", domainId), nil)
}
